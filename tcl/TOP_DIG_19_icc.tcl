#Initial
#lappend search_path [glob ./techfiles]
source ./tcl/lib_tech_setup.tcl
source ./tcl/design_setup.tcl

define_name_rules verilog -allowed "A-Z0-9_"

# Library Setup
create_mw_lib ${design_name} -technology ${tech_file} -mw_reference_library ${ref_libs} -open

# Design Setup
import_designs ${vnet_files} -format verilog -top ${design_name}

derive_pg_connection -power_net VDDD -power_pin VDD -ground_net VSSD -ground_pin VSS
derive_pg_connection -tie -power_net VDDD -ground_net VSSD

read_sdc ./sdc/${design_name}.sdc

set_dont_use {tcbn65gpluslvtwc/FC* tcbn65gpluslvtwc/FI* tcbn65gpluslvtwc/HC* tcbn65gpluslvtwc/HI* tcbn65gpluslvtwc/L* tcbn65gpluslvtwc/SD* tcbn65gpluslvtwc/SED* tcbn65gpluslvtwc/DEL* tcbn65gpluslvtwc/G*}

#Floor Plan
source ./tcl/floor_plan.tcl

# Place
place_opt
derive_pg_connection -power_net VDDD -power_pin VDD -ground_net VSSD -ground_pin VSS
derive_pg_connection -tie -power_net VDDD -ground_net VSSD
save_mw_cel -as ${design_name}_place
report_constraint -all

# Draw VDD/VSS Lines
create_power_straps -nets {VDDD VSSD} -direction vertical -layer AP -width 12 \
                    -step 30.0 -pitch_within_group 15.0 -start_at 176 -stop 1331.9
create_power_straps -nets {VDDD VSSD} -direction horizontal -layer M9 -width 12 \
                    -step 30.0 -pitch_within_group 15.0 -start_at 176 -stop 1332.7
create_power_straps -nets {VDDD VSSD} -direction vertical -layer M8 -width 1.0 \
                    -step 30.0 -pitch_within_group 15.0 -start_at 176 -stop 1331.9
preroute_standard_cells -nets {VDDD VSSD}
save_mw_cel -as ${design_name}_fp

# CTS
remove_clock_uncertainty [all_clocks]
define_routing_rule MY_CLK_RULE -widths {M3 0.1 M4 0.1 M5 0.1 M6 0.1} \
                                -spacings {M3 0.2 M4 0.2 M5 0.2 M6 0.2}
set_clock_tree_options -target_early_delay 0.3 -target_skew 0.1 \
                       -routing_rule MY_CLK_RULE -layer_list "M3 M6"
set_clock_tree_references -references {CKND6LVT CKND8LVT}

clock_opt
derive_pg_connection -power_net VDDD -power_pin VDD -ground_net VSSD -ground_pin VSS
derive_pg_connection -tie -power_net VDDD -ground_net VSSD
save_mw_cel -as ${design_name}_cts
report_constraint -all

# Route
route_opt
derive_pg_connection -power_net VDDD -power_pin VDD -ground_net VSSD -ground_pin VSS
derive_pg_connection -tie -power_net VDDD -ground_net VSSD
save_mw_cel -as ${design_name}_route
report_constraint -all
report_timing

# Insert Filler Cells
insert_stdcell_filler \
          -cell_with_metal {DCAP64LVT DCAP32LVT DCAP16LVT DCAP8LVT DCAP4LVT} \
          -connect_to_power VDDD -connect_to_ground VSSD \
          -between_std_cells_only

insert_stdcell_filler \
          -cell_without_metal {FILL64LVT FILL32LVT FILL16LVT FILL8LVT FILL4LVT FILL2LVT FILL1LVT} \
          -connect_to_power VDDD -connect_to_ground VSSD \
          -between_std_cells_only

save_mw_cel -as ${design_name}_fill

write_verilog XXXXX.v
write_verilog -pg XXXXX.lvs_v  

write_stream -cells XXXXX_fill XXXXX.gds

exit

