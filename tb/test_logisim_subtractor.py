import cocotb
from cocotb.triggers import Timer, Edge, RisingEdge, First
from cocotb.clock import Clock

def twos_complement(val):
    return int(val) - (1<<32)
    


@cocotb.test()
async def test_2s_complement(dut):

    test_vals = [
        0x401f
    ]

    for val in test_vals:
        dut.borrowIn.value = 0
        dut.dataA.value = 0
        dut.dataB.value = val

        await Timer(1, "ns")

        # debug print
        if dut.result.value != abs(twos_complement(val)):
            print(f"{hex(val)} is {hex(twos_complement(val))}, got {hex(dut.result.value)}")

        dut.borrowIn.value = 1

        await Timer(1, "ns")

        assert dut.result.value == abs(twos_complement(val))