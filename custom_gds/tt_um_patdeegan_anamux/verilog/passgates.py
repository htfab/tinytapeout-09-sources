'''
Created on Sep 6, 2024

@author: Pat Deegan
@copyright: Copyright (C) 2024 Pat Deegan, https://psychogenic.com
'''

from amaranth import Elaboratable, Signal, Module
from amaranth.build import Platform

class PassgateCtrl(Elaboratable):
    def __init__(self, idx:int):
        # self.enable = Signal(name=f'en_{idx}')
        self.enable = Signal(name=f'en_{idx}')
        
        self.gp = Signal(name=f'gp_{idx}')
        self.gn = Signal(name=f'gn_{idx}')
        
        
    def elaborate(self, platform:Platform):
        m = Module()
        m.d.comb += [
            self.gp.eq(~self.enable),
            self.gn.eq(self.enable)
        ]
        
        return m
        

class PassgatesOneHot(Elaboratable):
    
    def __init__(self, numbits:int=2):
        
        self.select = Signal(numbits) # input 
        self.num_gates = numbits**2
        self.passgates = []
        for i in range(self.num_gates):
            pg = PassgateCtrl(i)
            self.passgates.append(pg)
        
    
    def elaborate(self, platform:Platform):
        m = Module()
        for i in range(self.num_gates):
            m.submodules += self.passgates[i]
            
            
        for i in range(self.num_gates):
            m.d.comb += self.passgates[i].enable.eq(self.select == i)
        #if platform is None:
        #    # simulation
        #    counter = Signal(8)
        #    m.d.sync += counter.eq(counter + 1)
        return m
        
class Top(Elaboratable):
    def __init__(self):
        self.numbits = 2
        
        self.select = Signal(self.numbits) # input 
        self.gpo = []
        self.gno = []
        for i in range(self.numbits**2):
            self.gpo.append(Signal(name=f'gpo{i}'))
            self.gno.append(Signal(name=f'gno{i}'))
    def ports(self):
        retList = [self.select]
        for i in range(self.numbits**2):
            retList.append(self.gno[i])
            retList.append(self.gpo[i])
        
        return retList
    def elaborate(self, platform:Platform):
        m = Module()
        
        pg = PassgatesOneHot(self.numbits)
        m.submodules.passgates = pg 
        
        m.d.comb += pg.select.eq(self.select)
        for i in range(self.numbits**2):
            m.d.comb += [
                    self.gpo[i].eq(pg.passgates[i].gp),
                    self.gno[i].eq(pg.passgates[i].gn),
                ]
        
        return m
        
        

def synthesise_project():
    from amaranth.back import verilog
    # All we need to do is create the top-level module, then call the
    # platform's `build()` method with it.
    top = Top()
    v = verilog.convert(top, name='passgatesCtrl', ports=top.ports(), emit_src=False) # , strip_internal_attrs=True)
    print(v)





if __name__ == "__main__":
    import argparse

    parser = argparse.ArgumentParser()
    p_action = parser.add_subparsers(dest="action")
    p_action.add_parser("simulate")
    p_action.add_parser("generate")

    args = parser.parse_args()
    if args.action == "simulate":
        from amaranth.sim import Simulator
        fadeTimeSecs = 0.10
        clockFreq = 1e6
        pg = PassgatesOneHot(2)

        sim = Simulator(pg)
        sim.add_clock(1/clockFreq)

        async def testbench_twiddle_select(ctx):
            for i in range(4):
                
                ctx.set(pg.select, i)
                await ctx.tick().repeat(10) # hold it a bit
            
        
        sim.add_testbench(testbench_twiddle_select)

        with sim.write_vcd("passgates.vcd", "passgates.gtkw"):
            sim.run()

    if args.action == "generate":
        synthesise_project()   
        
            
        