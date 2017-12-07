
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name processor -dir "E:/MIPS16-processor-master/processor/planAhead_run_3" -part xc3s1200efg320-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "E:/MIPS16-processor-master/processor/processor.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {E:/MIPS16-processor-master/processor} {ipcore_dir} }
add_files [list {ipcore_dir/font.ncf}] -fileset [get_property constrset [current_run]]
set_param project.pinAheadLayout  yes
set_property target_constrs_file "processor.ucf" [current_fileset -constrset]
add_files [list {processor.ucf}] -fileset [get_property constrset [current_run]]
link_design
