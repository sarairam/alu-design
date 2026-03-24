# 8-bit ALU Design (Verilog)

## Description
Designed and implemented an 8-bit Arithmetic Logic Unit (ALU) using Verilog HDL to perform arithmetic and logical operations. The ALU supports operations such as addition, subtraction, AND, OR, and XOR, selected through a control signal.

## Tools Used
- Verilog HDL
- Xilinx Vivado

## Features
- 8-bit input operands
- Supports 5 operations (ADD, SUB, AND, OR, XOR)
- Carry output for arithmetic operations
- Verified using testbench simulation

## Operations

| Select | Operation |
|--------|----------|
| 000    | ADD      |
| 001    | SUB      |
| 010    | AND      |
| 011    | OR       |
| 100    | XOR      |

## Output
![Waveform](outputs/waveform.png)