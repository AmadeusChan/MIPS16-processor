# Description
A MIPS processor designed in VHDL, which supports the following instructions: (This is the final project of Computer Orgnization in Tsinghua University)

-[x] ADDIU 
-[x] ADDIU3
-[x] ADDSP
-[x] ADDU
-[x] AND
-[x] B
-[x] BEQZ
-[x] BNEZ
-[x] BTEQZ
-[x] CMP
-[x] JR
-[x] LI
-[ ] LW
-[ ] LW_SP
-[x] MFIH
-[x] MFPC
-[x] MTIH
-[x] MTSP
-[x] NOP
-[x] OR
-[x] SLL
-[x] SRA
-[x] SUBU
-[ ] SW
-[ ] SW_SP
-[x] MOVE	
-[x] SLLV	
-[x] BTNEZ	
-[ ] SW_RS	
-[x] ADDSP3

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

## progress
- ALU.vhd
	* [x] implement 
	* [ ] simulation
	* [ ] test on FPGA
- ID_forward_IF_regs.vhd
	* [x] implement 
	* [x] simulation
	* [ ] test on FPGA
- IF_ID_regs.vhd
	* [x] implement 
	* [x] simulation
	* [ ] test on FPGA
- ID_ALU_regs.vhd
	* [x] implement 
	* [x] simulation
	* [ ] test on FPGA
- ALU_MEM_regs.vhd
	* [x] implement 
	* [x] simulation
	* [ ] test on FPGA
- MEM_WB_regs.vhd
	* [x] implement 
	* [x] simulation
	* [ ] test on FPGA
- controller.vhd
	* [x] implement 
	* [x] simulation
	* [ ] test on FPGA
- decoder.vhd
	* [x] implement 
	* [x] simulation
	* [ ] test on FPGA
- registers.vhd
	* [x] implement 
	* [x] simulation
	* [ ] test on FPGA
- DM.vhd
	* [x] implement 
	* [x] simulation
	* [x] test on FPGA
- IM.vhd
	* [x] implement 
	* [x] simulation
	* [x] test on FPGA
- external_devices.vhd
	* [ ] implement 
	* [ ] simulation
	* [ ] test on FPGA
- instruction_fetch_module.vhd
	* [x] implement 
	* [x] simulation
	* [ ] test on FPGA
- register_module.vhd
	* [x] implement 
	* [x] simulation
	* [ ] test on FPGA
- RAW_hazard_detector_and_forward_unit.vhd
	* [x] implement 
	* [x] simulation
	* [ ] test on FPGA
- UAL_hazard_detector.vhd
	* [x] implement 
	* [x] simulation
	* [ ] test on FPGA
- structural_hazard_detector.vhd
	* [x] implement 
	* [x] simulation
	* [ ] test on FPGA
- processor.vhd
	* [x] implement 
	* [x] simulation
	* [ ] test on FPGA

## delay estimation
- registers.vhd: 12ns + ALU delay
- structural_hazard_detector.vhd: 6ns
- RAW hazard_detector and forward unit: 10ns
- controller: 10ns
- decoder: 10ns
- register_module: 11ns for control signal
