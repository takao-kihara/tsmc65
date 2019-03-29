### P&R Area ###
create_boundary -poly {{166.9 924} {166.9 1337.7} {1331.9 1337.7} {1331.9 167.7} {784 167.7} {784 924}}
initialize_rectilinear_block -use_current_boundary -left_io2core 5.0 -top_io2core 5.0 -right_io2core 5.0 -bottom_io2core 5.0

### Pin Placement ###
# Left
set_pin_physical_constraints -pin_name {outd_i[20]} -layers {M5} -width 0.2 -depth 0.2 -side 3 -offset 96.0
set_pin_physical_constraints -pin_name {outd_oen[20]} -layers {M5} -width 0.2 -depth 0.2 -side 3 -offset 106.5
set_pin_physical_constraints -pin_name {outd_ren[20]} -layers {M5} -width 0.2 -depth 0.2 -side 3 -offset 110.5
set_pin_physical_constraints -pin_name {outd_i[19]} -layers {M5} -width 0.2 -depth 0.2 -side 3 -offset 166.0
set_pin_physical_constraints -pin_name {outd_oen[19]} -layers {M5} -width 0.2 -depth 0.2 -side 3 -offset 176.5
set_pin_physical_constraints -pin_name {outd_ren[19]} -layers {M5} -width 0.2 -depth 0.2 -side 3 -offset 180.5
set_pin_physical_constraints -pin_name {outd_i[18]} -layers {M5} -width 0.2 -depth 0.2 -side 3 -offset 236.0
set_pin_physical_constraints -pin_name {outd_oen[18]} -layers {M5} -width 0.2 -depth 0.2 -side 3 -offset 246.5
set_pin_physical_constraints -pin_name {outd_ren[18]} -layers {M5} -width 0.2 -depth 0.2 -side 3 -offset 250.5
set_pin_physical_constraints -pin_name {outd_i[17]} -layers {M5} -width 0.2 -depth 0.2 -side 3 -offset 306.0
set_pin_physical_constraints -pin_name {outd_oen[17]} -layers {M5} -width 0.2 -depth 0.2 -side 3 -offset 316.5
set_pin_physical_constraints -pin_name {outd_ren[17]} -layers {M5} -width 0.2 -depth 0.2 -side 3 -offset 320.5

# Top
set_pin_physical_constraints -pin_name {outd_i[16]} -layers {M4} -width 0.2 -depth 0.2 -side 4 -offset 292.0
set_pin_physical_constraints -pin_name {outd_oen[16]} -layers {M4} -width 0.2 -depth 0.2 -side 4 -offset 302.5
set_pin_physical_constraints -pin_name {outd_ren[16]} -layers {M4} -width 0.2 -depth 0.2 -side 4 -offset 306.5
set_pin_physical_constraints -pin_name {outd_i[15]} -layers {M4} -width 0.2 -depth 0.2 -side 4 -offset 362.0
set_pin_physical_constraints -pin_name {outd_oen[15]} -layers {M4} -width 0.2 -depth 0.2 -side 4 -offset 372.5
set_pin_physical_constraints -pin_name {outd_ren[15]} -layers {M4} -width 0.2 -depth 0.2 -side 4 -offset 376.5
set_pin_physical_constraints -pin_name {outd_i[14]} -layers {M4} -width 0.2 -depth 0.2 -side 4 -offset 432.0
set_pin_physical_constraints -pin_name {outd_oen[14]} -layers {M4} -width 0.2 -depth 0.2 -side 4 -offset 442.5
set_pin_physical_constraints -pin_name {outd_ren[14]} -layers {M4} -width 0.2 -depth 0.2 -side 4 -offset 446.5
set_pin_physical_constraints -pin_name {outd_i[13]} -layers {M4} -width 0.2 -depth 0.2 -side 4 -offset 502.0
set_pin_physical_constraints -pin_name {outd_oen[13]} -layers {M4} -width 0.2 -depth 0.2 -side 4 -offset 512.5
set_pin_physical_constraints -pin_name {outd_ren[13]} -layers {M4} -width 0.2 -depth 0.2 -side 4 -offset 516.5
set_pin_physical_constraints -pin_name {outd_i[12]} -layers {M4} -width 0.2 -depth 0.2 -side 4 -offset 572.0
set_pin_physical_constraints -pin_name {outd_oen[12]} -layers {M4} -width 0.2 -depth 0.2 -side 4 -offset 582.5
set_pin_physical_constraints -pin_name {outd_ren[12]} -layers {M4} -width 0.2 -depth 0.2 -side 4 -offset 586.5
set_pin_physical_constraints -pin_name {outd_i[11]} -layers {M4} -width 0.2 -depth 0.2 -side 4 -offset 642.0
set_pin_physical_constraints -pin_name {outd_oen[11]} -layers {M4} -width 0.2 -depth 0.2 -side 4 -offset 652.5
set_pin_physical_constraints -pin_name {outd_ren[11]} -layers {M4} -width 0.2 -depth 0.2 -side 4 -offset 656.5
set_pin_physical_constraints -pin_name {outd_i[10]} -layers {M4} -width 0.2 -depth 0.2 -side 4 -offset 992.0
set_pin_physical_constraints -pin_name {outd_oen[10]} -layers {M4} -width 0.2 -depth 0.2 -side 4 -offset 1002.5
set_pin_physical_constraints -pin_name {outd_ren[10]} -layers {M4} -width 0.2 -depth 0.2 -side 4 -offset 1006.5
set_pin_physical_constraints -pin_name {outd_i[9]} -layers {M4} -width 0.2 -depth 0.2 -side 4 -offset 1062.0
set_pin_physical_constraints -pin_name {outd_oen[9]} -layers {M4} -width 0.2 -depth 0.2 -side 4 -offset 1072.5
set_pin_physical_constraints -pin_name {outd_ren[9]} -layers {M4} -width 0.2 -depth 0.2 -side 4 -offset 1076.5

# Right
set_pin_physical_constraints -pin_name {outd_clk_i} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 152.0
set_pin_physical_constraints -pin_name {outd_clk_oen} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 162.5
set_pin_physical_constraints -pin_name {outd_clk_ren} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 166.5
set_pin_physical_constraints -pin_name {outd_i[0]} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 222.0
set_pin_physical_constraints -pin_name {outd_oen[0]} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 232.5
set_pin_physical_constraints -pin_name {outd_ren[0]} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 236.5
set_pin_physical_constraints -pin_name {outd_i[1]} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 292.0
set_pin_physical_constraints -pin_name {outd_oen[1]} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 302.5
set_pin_physical_constraints -pin_name {outd_ren[1]} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 306.5
set_pin_physical_constraints -pin_name {outd_i[2]} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 362.0
set_pin_physical_constraints -pin_name {outd_oen[2]} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 372.5
set_pin_physical_constraints -pin_name {outd_ren[2]} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 376.5
set_pin_physical_constraints -pin_name {outd_i[3]} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 432.0
set_pin_physical_constraints -pin_name {outd_oen[3]} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 442.5
set_pin_physical_constraints -pin_name {outd_ren[3]} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 446.5
set_pin_physical_constraints -pin_name {outd_i[4]} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 502.0
set_pin_physical_constraints -pin_name {outd_oen[4]} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 512.5
set_pin_physical_constraints -pin_name {outd_ren[4]} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 516.5
set_pin_physical_constraints -pin_name {vssd} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 572.0
set_pin_physical_constraints -pin_name {vddd} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 642.0
set_pin_physical_constraints -pin_name {outd_i[5]} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 852.0
set_pin_physical_constraints -pin_name {outd_oen[5]} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 862.5
set_pin_physical_constraints -pin_name {outd_ren[5]} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 866.5
set_pin_physical_constraints -pin_name {outd_i[6]} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 922.0
set_pin_physical_constraints -pin_name {outd_oen[6]} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 932.5
set_pin_physical_constraints -pin_name {outd_ren[6]} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 936.5
set_pin_physical_constraints -pin_name {outd_i[7]} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 992.0
set_pin_physical_constraints -pin_name {outd_oen[7]} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 1002.5
set_pin_physical_constraints -pin_name {outd_ren[7]} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 1006.5
set_pin_physical_constraints -pin_name {outd_i[8]} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 1062.0
set_pin_physical_constraints -pin_name {outd_oen[8]} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 1072.5
set_pin_physical_constraints -pin_name {outd_ren[8]} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 1076.5

# Bottom
set_pin_physical_constraints -pin_name {scs_oen} -layers {M4} -width 0.2 -depth 0.2 -side 6 -offset 105.5
set_pin_physical_constraints -pin_name {scs_ren} -layers {M4} -width 0.2 -depth 0.2 -side 6 -offset 109.5
set_pin_physical_constraints -pin_name {scs_c} -layers {M4} -width 0.2 -depth 0.2 -side 6 -offset 115.0
set_pin_physical_constraints -pin_name {sdi_oen} -layers {M4} -width 0.2 -depth 0.2 -side 6 -offset 175.5
set_pin_physical_constraints -pin_name {sdi_ren} -layers {M4} -width 0.2 -depth 0.2 -side 6 -offset 179.5
set_pin_physical_constraints -pin_name {sdi_c} -layers {M4} -width 0.2 -depth 0.2 -side 6 -offset 185.0
set_pin_physical_constraints -pin_name {sdo_i} -layers {M4} -width 0.2 -depth 0.2 -side 6 -offset 235.0
set_pin_physical_constraints -pin_name {sdo_oen} -layers {M4} -width 0.2 -depth 0.2 -side 6 -offset 245.5
set_pin_physical_constraints -pin_name {sdo_ren} -layers {M4} -width 0.2 -depth 0.2 -side 6 -offset 249.5
set_pin_physical_constraints -pin_name {rst_oen} -layers {M4} -width 0.2 -depth 0.2 -side 6 -offset 315.5
set_pin_physical_constraints -pin_name {rst_ren} -layers {M4} -width 0.2 -depth 0.2 -side 6 -offset 319.5
set_pin_physical_constraints -pin_name {rst_c} -layers {M4} -width 0.2 -depth 0.2 -side 6 -offset 325.0

# Analog Boundary
set_pin_physical_constraints -pin_name {in_adc1_p} -layers {M5} -width 0.2 -depth 0.2 -side 1 -offset 554.0
set_pin_physical_constraints -pin_name {in_adc1_n} -layers {M5} -width 0.2 -depth 0.2 -side 1 -offset 548.6
set_pin_physical_constraints -pin_name {in_adc2_p} -layers {M5} -width 0.2 -depth 0.2 -side 1 -offset 537.8
set_pin_physical_constraints -pin_name {in_adc2_n} -layers {M5} -width 0.2 -depth 0.2 -side 1 -offset 532.4
set_pin_physical_constraints -pin_name {in_adc3_p} -layers {M5} -width 0.2 -depth 0.2 -side 1 -offset 521.6
set_pin_physical_constraints -pin_name {in_adc3_n} -layers {M5} -width 0.2 -depth 0.2 -side 1 -offset 516.2
set_pin_physical_constraints -pin_name {in_adc4_p} -layers {M5} -width 0.2 -depth 0.2 -side 1 -offset 505.4
set_pin_physical_constraints -pin_name {in_adc4_n} -layers {M5} -width 0.2 -depth 0.2 -side 1 -offset 500.0
set_pin_physical_constraints -pin_name {in_adc_teg_p} -layers {M5} -width 0.2 -depth 0.2 -side 1 -offset 130.4
set_pin_physical_constraints -pin_name {in_adc_teg_n} -layers {M5} -width 0.2 -depth 0.2 -side 1 -offset 125.0
