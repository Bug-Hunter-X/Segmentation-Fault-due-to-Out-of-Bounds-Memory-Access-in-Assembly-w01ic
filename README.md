# Segmentation Fault in Assembly Code

This repository demonstrates a common assembly language error that results in a segmentation fault: accessing memory outside the program's allocated space. The `bug.asm` file contains the faulty code snippet, while `bugSolution.asm` provides a corrected version with proper bounds checking.

## Problem
The core issue lies within the assembly instruction:

`mov eax, [ebx+esi*4+0x10]`

This instruction calculates a memory address and attempts to read a value from it.  However, if the calculation produces an address that is not within the program's permitted memory range, a segmentation fault occurs.

## Solution
The solution involves adding robust bounds checking before accessing memory. This ensures that the calculated address falls within the safe memory limits allocated to the program. The `bugSolution.asm` file illustrates this approach.