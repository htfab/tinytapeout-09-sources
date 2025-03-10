# SPDX-FileCopyrightText: © 2024 Tiny Tapeout
# SPDX-License-Identifier: Apache-2.0

import cocotb
from cocotb.clock import Clock
from cocotb.triggers import ClockCycles

@cocotb.test()
async def test_project(dut):
    dut._log.info("Start")

    data_sample = 0

    # Set the clock period to 20 ns (50 MHz)
    clock = Clock(dut.clk, 20, units="ns")
    cocotb.start_soon(clock.start())

    # Reset
    dut._log.info("Reset")
    dut.ena.value = 1
    dut.ui_in.value = 0
    dut.uio_in.value = 0
    dut.rst_n.value = 0
    await ClockCycles(dut.clk, 10)
    dut.rst_n.value = 1

    dut._log.info("Test project behavior")

    # Set the input values you want to test
    dut.ui_in.value = 4

    with open("bitstream.txt", "r") as f:
        for line in f:
            value = int(line.strip())  # Assuming the file contains integer values
            dut.ui_in.value = (dut.ui_in.value & ~1) + (value & 1)
            await ClockCycles(dut.clk, 1)

    # # TODO Read in the data here
    # while done_flag == 0:
    #     dut._log.info("Logging Data")
    #     await cocotb.triggers.RisingEdge(dut.uio_out[2])    # Wait for the first output value to be ready

    #     await cocotb.triggers.RisingEdge(dut.uio_out[0])    
    #     data_sample = data_sample + dut.uo_out.value.integer << 16
    #     await cocotb.triggers.RisingEdge(dut.uio_out[0])  
    #     data_sample = data_sample + dut.uo_out.value.integer << 8
    #     await cocotb.triggers.RisingEdge(dut.uio_out[0])
    #     data_sample = data_sample + dut.uo_out.value.integer

    #     with open("./out.txt", "w") as file:
    #         file.write(str(data_sample) + "\n")

    # Wait for one clock cycle to see the output values
    await ClockCycles(dut.clk, 5)

    # The following assersion is just an example of how to check the output values.
    # Change it to match the actual expected output of your module:
    #assert dut.uo_out.value == 50

    # Keep testing the module by changing the input values, waiting for
    # one or more clock cycles, and asserting the expected output values.
