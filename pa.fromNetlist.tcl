
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name yimaqi -dir "D:/szdl/yimaqi/planAhead_run_2" -part xc7a100tfgg484-2L
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/szdl/yimaqi/yimaqi.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/szdl/yimaqi} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "yimaqi.ucf" [current_fileset -constrset]
add_files [list {yimaqi.ucf}] -fileset [get_property constrset [current_run]]
link_design
