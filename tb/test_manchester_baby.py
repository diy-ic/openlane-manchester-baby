import cocotb
from cocotb.triggers import Timer, Edge, RisingEdge, First, Combine
from cocotb.clock import Clock
from cocotb.types import Logic, LogicArray, Range
from cocotb.handle import Release

@cocotb.test()
async def halt(dut):

    # bit order: 31:0
    # little endian
    fake_program = [
        0x00000000,
        0x0000e000
    ]

    cocotb.start_soon(Clock(dut.clock, 1, units="ns").start())

    # reset baby & set ram data to first program line
    dut.reset_i.value = 1
    dut.ram_data_io.value = fake_program[0]
    await Timer(1, "ns") # let signals propagate

    # deselect reset
    dut.reset_i.value = 0

    # wait for program counter to change
    # long name is due to hierarchy
    await Edge(dut.uut_manchester_baby.manchester_baby_instance.CIRCUIT_0.PC.q)

    # next program line (halt instruction)
    dut.ram_data_io.value = fake_program[1]

    # wait for halt instruction to illuminate the stop signal
    await Edge(dut.stop_lamp_o) 

    assert dut.stop_lamp_o.value == 1

@cocotb.test()
async def run_long_division(dut):

    raise Exception("Do not use - broken testbench.")
    # TODO: fix this testbench? issue with sampling ram_rw_en_o at 83ns when the logisim_clock_tree_0_out goes high
    # cocotb initially reports ram_rw_en_o as 0, then triggers again with 1 if the trigger is enabled
    # not sure why this is the case, but it seems to completely ruin the flow of the testbench
    #
    # this has been replaced with a systemverilog testbench
    
    program = [
        0x00000013, 0x0000401f, 0x0000601f, 0x0000401f,
        0x0000801e, 0x0000c000, 0x00000000, 0x0000401f,
        0x0000601f, 0x0000401c, 0x0000801c, 0x0000601c,
        0x0000401f, 0x0000801f, 0x0000601f, 0x0000401c,
        0x0000601c, 0x0000c000, 0x0000001a, 0x0000e000,
        0x0000601f, 0x0000401d, 0x0000801c, 0x0000801c,
        0x0000601c, 0x0000001b, 0x00000002, 0x0000000b,
        0x00000000, 0x20000000, 0x00000014, 0x00000024
    ]

    cocotb.start_soon(Clock(dut.clock, 1, units="ns").start())

    # initial set up
    dut.reset_i.value = 1
    await Timer(1, "ns")
    dut.reset_i.value = 0   


    # if ram_rw_en_o is 0, tb is allowed to write onto bus
    # if ram_rw_en_o is 1, tb should listen to bus (baby is writing)
    while True:

        if cocotb.utils.get_sim_time() / 1000 > 500:
             break

        x = await First(
            # Edge(dut.uut_manchester_baby.manchester_baby_instance.CIRCUIT_0.PC.q),
            # RisingEdge(dut.clock),
            # Combine(
                #  RisingEdge(dut.ram_rw_en_o),
                #  RisingEdge(dut.logisim_clock_tree_3_out)
            # ),
            # RisingEdge(dut.ram_rw_en_o),
            RisingEdge(dut.logisim_clock_tree_0_out),
            # RisingEdge(dut.logisim_clock_tree_3_out),
            # RisingEdge(dut.stop_lamp_o)
        )

        dut.ram_data_io.value = Release()
        
        print(f"{x} ({cocotb.utils.get_sim_time()/1000}) RAM_RW_EN_O: {dut.ram_rw_en_o.value}\tLOGISIM_CLOCK: {dut.logisim_clock_tree_0_out.value}\tSTOP: {dut.stop_lamp_o.value}")

        if dut.stop_lamp_o.value == 1:
            break

        if dut.ram_rw_en_o.value == 0:
            # vv bidirectional port
            # print(f"reading from ram {int(dut.ram_addr_o.value)} = {hex(program[dut.ram_addr_o.value])}")
            dut.ram_data_io.value = program[dut.ram_addr_o.value]

            dut.uut_manchester_baby.ram_data_i.value = program[dut.ram_addr_o.value]
    
        elif dut.ram_rw_en_o.value == 1:
            await Timer(1, "ns")
            # print(f"writing to ram {int(dut.ram_addr_o.value)} = {hex(dut.ram_data_io.value)}")
            # program[dut.ram_addr_o.value] = int(dut.ram_data_io.value)

            # dut.ram_data_io.value = LogicArray("Z"*32)

            print(f"writing to ram {int(dut.ram_addr_o.value)} = {hex(dut.uut_manchester_baby.ram_data_o.value)}")

            try:
                print(f"\tio val: {hex(dut.ram_data_io.value)}")
            except Exception as e:
                 print(f"\t{e}")
            
            program[dut.ram_addr_o.value] = int(dut.uut_manchester_baby.ram_data_o.value)
         

    print()
    for i in range(len(program)):
            print(f"{i} {hex(i)} : {hex(program[i])}")


    assert 0 == 1