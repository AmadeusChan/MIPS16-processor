
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name processor -dir "Y:/Desktop/homework/computer_organization/big_homework/MIPS16-processor/processor/planAhead_run_4" -part xc3s1200efg320-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "Y:/Desktop/homework/computer_organization/big_homework/MIPS16-processor/processor/processor.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {Y:/Desktop/homework/computer_organization/big_homework/MIPS16-processor/processor} {ipcore_dir} }
add_files [list {ipcore_dir/font.ncf}] -fileset [get_property constrset [current_run]]
set_param project.pinAheadLayout  yes
set_property target_constrs_file "processor.ucf" [current_fileset -constrset]
add_files [list {processor.ucf}] -fileset [get_property constrset [current_run]]
link_design
