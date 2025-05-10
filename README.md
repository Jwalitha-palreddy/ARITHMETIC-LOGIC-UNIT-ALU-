# ARITHMETIC-LOGIC-UNIT-ALU

*COMPANY*: CODTECH IT SOLUTIONS

*NAME*: JWALITHA PALREDDY

*INTERN ID*: CT4MKLN

*DOMAIN*: VLSI

*DURATION*: 16 WEEKS

*MENTOR*: NEELA SANTHOSH

*DESCRIPTION*: The code is a simple verilog HDL implementation and simulation of an Arithmetic Logic Unit (ALU). This design performs five basic operations ADD, SUB, INV, AND, and OR. The goal is to build a combinational ALU that takes two 8-bit operands and a 4-bit command, executes the desired operation, and produces a 16-bit output. The testbench systematically tests all five suppoeted ALU operations. The definition file shows set of define macros, these macros assign binary codes to ALU operations. Instead of hardcoding command values in multiple places, these macros make the code more readable and maintainable. Each command is represented using 4-bit binary. The ALU module defines the actual ALU logic. The module has inputs operand 1 and operand 2 both are 8-bit inputs, command is a 4-bit control input, output is a 16-bit register that stores the result. The ALU behaviour is implemented in an always block using a case statement that checks the value of command. Based on the command, ADD performs adds operrand 1 and operand 2, SUB performs subtracts operand 2 from operand 1, INV performs bitwise negation (NOT) of operand 1, AND performs bitwise AND of operand 1 and operand 2, OR performs bitwise OR of operand 1 and operand 2, default assigns high-impedance if no valid command is given. This module performs the actual computation based on control logic. The testbench is used to verify the ALU's functionality. It declares reg for 8-bit a, b, and 4-bit command, and a wire for the 16-bit out. An instance of module is created and connected to these signals. Inside an initial block a is set to 5 and b is set to 3. A for loop iterates over values from 0 to 4, assigning each to command and pausing 10 time units of simulation to evaluate output. Finally finish system task function terminates the simulation. This testbench is designed to apply each ALU operation in sequence and verify the output using the same operands for consistency. This verilog code demonstrates a foundational ALU design. It uses macros for operation codes, clean modular design for computation, and an automated testbench for simulation.

*OUTPUT*:

<img width="680" alt="Image" src="https://github.com/user-attachments/assets/d0c13799-0f20-4508-9959-f0072a039761" />
