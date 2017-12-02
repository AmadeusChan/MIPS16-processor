
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name processor -dir "D:/yi__c/MIPS16-processor/processor/planAhead_run_2" -part xc3s1200efg320-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/yi__c/MIPS16-processor/processor/fpga_DM.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/yi__c/MIPS16-processor/processor} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "fpga_DM.ucf" [current_fileset -constrset]
add_files [list {fpga_DM.ucf}] -fileset [get_property constrset [current_run]]
link_design
