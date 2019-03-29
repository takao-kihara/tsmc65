# Library
set LIB_DIR       "/mnt/nas/pdk/tsmc65nm/tcbn65gpluslvt/TSMCHOME/digital/Front_End/timing_power_noise/NLDM/tcbn65gpluslvt_200a"
set TECH_DIR      "/mnt/nas/pdk/tsmc65nm/tcbn65gpluslvt/TSMCHOME/digital/Back_End/milkyway/tcbn65gpluslvt_200a/techfiles"
set TLU_DIR       "/mnt/nas/pdk/tsmc65nm/tcbn65gpluslvt/TSMCHOME/digital/Back_End/milkyway/tcbn65gpluslvt_200a/techfiles/tluplus"
set DW_DIR        "/mnt/nas/cad/synopsys/syn_vL-2016.03-SP4/libraries/syn"
                                
set std_max_libs        {tcbn65gpluslvtwc.db}
set std_min_libs	{tcbn65gpluslvtlt.db}
                                
set search_path		[concat $LIB_DIR $TECH_DIR $TLU_DIR $DW_DIR $search_path]
set link_path		"*" 
                                                              
set LIB_MAX_FILE	[concat $std_max_libs]
set LIB_MIN_FILE	[concat $std_min_libs]
                                
set DW_FILE		"dw_foundation.sldb"
                                
set link_library	[concat $LIB_MAX_FILE $LIB_MIN_FILE $DW_FILE {*}]
set target_library	[concat $LIB_MAX_FILE $LIB_MIN_FILE ]

#%set ref_libs 		{ tcbn65gpluslvt }
set ref_libs  "/mnt/nas/pdk/tsmc65nm/tcbn65gpluslvt/TSMCHOME/digital/Back_End/milkyway/tcbn65gpluslvt_200a/cell_frame/tcbn65gpluslvt"

# Technology
set tech_file "/mnt/nas/pdk/tsmc65nm/tcbn65gpluslvt/TSMCHOME/digital/Back_End/milkyway/tcbn65gpluslvt_200a/techfiles/tsmcn65_9lmT2.tf"
set max_tluplus_file "cln65g+_1p09m+alrdl_cworst_top2.tluplus"
set min_tluplus_file "cln65g+_1p09m+alrdl_cbest_top2.tluplus"
set itf_tech_map_file "star.map_9M"

set_tlu_plus_files -max_tluplus ${max_tluplus_file} -min_tluplus ${min_tluplus_file} -tech2itf_map ${itf_tech_map_file}
