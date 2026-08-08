# 4-Bit Synchronous Counter in Verilog

## Description

This project implements a 4-bit synchronous up counter using Verilog HDL.

A synchronous counter changes its output on the active edge of a common clock signal.

The counter counts from:

0000 → 0001 → 0010 → ... → 1111

After 1111, the counter returns to 0000.

## Files

- `synchronous_counter.v` - Main Verilog design
- `synchronous_counter_tb.v` - Testbench
- `README.md` - Project documentation

## Inputs

- `clk`   - Clock signal
- `reset` - Synchronous reset

## Output

- `count` - 4-bit counter output

## Counter Sequence

```text
0000
0001
0010
0011
0100
0101
0110
0111
1000
1001
1010
1011
1100
1101
1110
1111
0000