## Description
Various bits and pieces of System Verilog modules for experimentation
with an ALU implementation designed for a homegrown 32-bit softcore
RISC processor.

## How to verify
### Dependencies
- Required
	- [yosys](https://github.com/YosysHQ/yosys)
	- [symbiyosys](https://github.com/YosysHQ/sby)
	- [yices2](https://github.com/SRI-CSL/yices2)
- Optional
	- [Icarus Verilog](https://github.com/steveicarus/iverilog)
	- [gtkwave](https://gtkwave.sourceforge.net/)

### Formal Verification
cd into any module directory (i.e. a directory with system verilog (.sv)
files in it) and run:
```sh
$ sby -f <module>_formal.sby

```
For example to verify the 32 bit Ripple-Carry Adder module:
```sh
$ cd adders/32bit_rca/
$ sby -f 32bit_rca_formal.sby

```

## Words of wisdom
Feel free to tweak, experiment, add modules if you want to, send in pull
requests, and all that good stuff.  In case any of the modules fail
to pass the formal verification, file an issue immediately! Also you
can file an issue to tell me that I'm stupid and doing everything wrong
since I don't have a lot of experience in writing Verilog code and also
I'm only starting out with Formal Verification.  If you are like me and
also want to learn about formal verification, you may wanna start with
[this video](https://www.youtube.com/watch?v=9e7F1XhjhKw).

## Related Projects
- [A Python Assembler for the same homegrown 32 bit RISC processor](https://github.com/Programish/Assembler):
This project is currently is trying very hard to become a working RISC-V
assembler.
- [An ARM assembler in C I started for the same pupose](https://github.com/Programish/Assembler):
Work in this project is currently stalled.
