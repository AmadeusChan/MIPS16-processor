# Description
A MIPS processor designed in VHDL, which supports the following instructions: (This is the final project of Computer Orgnization in Tsinghua University)

- ADDIU 
- ADDIU3
- ADDSP
- ADDU
- AND
- B
- BEQZ
- BNEZ
- BTEQZ
- CMP
- JR
- LI
- LW
- LW_SP
- MFIH
- MFPC
- MTIH
- MTSP
- NOP
- OR
- SLL
- SRA
- SUBU
- SW
- SW_SP
- MOVE	
- SLLV	
- BTNEZ	
- SW_RS	
- ADDSP3

## recent updates:
- delete control signal wb_from_reg_src, mem_from_reg_src(meaningless), load_from_mem(exactly the same as mem_read)

## gonna add:
- top-level module
- regs
- alu
- ram1, ram2
- external devices (VGA and PS2)
- ID_foward_IF_regs, IF_ID_regs, ID_ALU_regs, ALU_MEM_regs, MEM_WB_regs
- RAW(read after write) harzard detector 
- forward unit
- UAL(use after load) hazard detector
- structure hazard detector
- coprocessor-NN, including the following instructions:
	* vector element-wise plus, sub, multiplication
	* dot-product
	* load/store vector registers (8, length 128)