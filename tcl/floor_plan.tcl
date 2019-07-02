### P&R Area ###
create_boundary -poly {{166.9 924} {166.9 1337.7} {1331.9 1337.7} {1331.9 167.7} {784 167.7} {784 924}}
initialize_rectilinear_block -use_current_boundary -left_io2core 5.0 -top_io2core 5.0 -right_io2core 5.0 -bottom_io2core 5.0

### Pin Placement ###
# Left
set_pin_physical_constraints -pin_name {OUTD_I[20]} -layers {M5} -width 0.2 -depth 0.2 -side 3 -offset 96.0
set_pin_physical_constraints -pin_name {OUTD_OEN[20]} -layers {M5} -width 0.2 -depth 0.2 -side 3 -offset 106.5
set_pin_physical_constraints -pin_name {OUTD_REN[20]} -layers {M5} -width 0.2 -depth 0.2 -side 3 -offset 110.5
set_pin_physical_constraints -pin_name {OUTD_I[19]} -layers {M5} -width 0.2 -depth 0.2 -side 3 -offset 166.0
set_pin_physical_constraints -pin_name {OUTD_OEN[19]} -layers {M5} -width 0.2 -depth 0.2 -side 3 -offset 176.5
set_pin_physical_constraints -pin_name {OUTD_REN[19]} -layers {M5} -width 0.2 -depth 0.2 -side 3 -offset 180.5
set_pin_physical_constraints -pin_name {OUTD_I[18]} -layers {M5} -width 0.2 -depth 0.2 -side 3 -offset 236.0
set_pin_physical_constraints -pin_name {OUTD_OEN[18]} -layers {M5} -width 0.2 -depth 0.2 -side 3 -offset 246.5
set_pin_physical_constraints -pin_name {OUTD_REN[18]} -layers {M5} -width 0.2 -depth 0.2 -side 3 -offset 250.5
set_pin_physical_constraints -pin_name {OUTD_I[17]} -layers {M5} -width 0.2 -depth 0.2 -side 3 -offset 306.0
set_pin_physical_constraints -pin_name {OUTD_OEN[17]} -layers {M5} -width 0.2 -depth 0.2 -side 3 -offset 316.5
set_pin_physical_constraints -pin_name {OUTD_REN[17]} -layers {M5} -width 0.2 -depth 0.2 -side 3 -offset 320.5

# Top
set_pin_physical_constraints -pin_name {OUTD_I[16]} -layers {M4} -width 0.2 -depth 0.2 -side 4 -offset 292.0
set_pin_physical_constraints -pin_name {OUTD_OEN[16]} -layers {M4} -width 0.2 -depth 0.2 -side 4 -offset 302.5
set_pin_physical_constraints -pin_name {OUTD_REN[16]} -layers {M4} -width 0.2 -depth 0.2 -side 4 -offset 306.5
set_pin_physical_constraints -pin_name {OUTD_I[15]} -layers {M4} -width 0.2 -depth 0.2 -side 4 -offset 362.0
set_pin_physical_constraints -pin_name {OUTD_OEN[15]} -layers {M4} -width 0.2 -depth 0.2 -side 4 -offset 372.5
set_pin_physical_constraints -pin_name {OUTD_REN[15]} -layers {M4} -width 0.2 -depth 0.2 -side 4 -offset 376.5
set_pin_physical_constraints -pin_name {OUTD_I[14]} -layers {M4} -width 0.2 -depth 0.2 -side 4 -offset 432.0
set_pin_physical_constraints -pin_name {OUTD_OEN[14]} -layers {M4} -width 0.2 -depth 0.2 -side 4 -offset 442.5
set_pin_physical_constraints -pin_name {OUTD_REN[14]} -layers {M4} -width 0.2 -depth 0.2 -side 4 -offset 446.5
set_pin_physical_constraints -pin_name {OUTD_I[13]} -layers {M4} -width 0.2 -depth 0.2 -side 4 -offset 502.0
set_pin_physical_constraints -pin_name {OUTD_OEN[13]} -layers {M4} -width 0.2 -depth 0.2 -side 4 -offset 512.5
set_pin_physical_constraints -pin_name {OUTD_REN[13]} -layers {M4} -width 0.2 -depth 0.2 -side 4 -offset 516.5
set_pin_physical_constraints -pin_name {OUTD_I[12]} -layers {M4} -width 0.2 -depth 0.2 -side 4 -offset 572.0
set_pin_physical_constraints -pin_name {OUTD_OEN[12]} -layers {M4} -width 0.2 -depth 0.2 -side 4 -offset 582.5
set_pin_physical_constraints -pin_name {OUTD_REN[12]} -layers {M4} -width 0.2 -depth 0.2 -side 4 -offset 586.5
set_pin_physical_constraints -pin_name {OUTD_I[11]} -layers {M4} -width 0.2 -depth 0.2 -side 4 -offset 642.0
set_pin_physical_constraints -pin_name {OUTD_OEN[11]} -layers {M4} -width 0.2 -depth 0.2 -side 4 -offset 652.5
set_pin_physical_constraints -pin_name {OUTD_REN[11]} -layers {M4} -width 0.2 -depth 0.2 -side 4 -offset 656.5
set_pin_physical_constraints -pin_name {OUTD_I[10]} -layers {M4} -width 0.2 -depth 0.2 -side 4 -offset 992.0
set_pin_physical_constraints -pin_name {OUTD_OEN[10]} -layers {M4} -width 0.2 -depth 0.2 -side 4 -offset 1002.5
set_pin_physical_constraints -pin_name {OUTD_REN[10]} -layers {M4} -width 0.2 -depth 0.2 -side 4 -offset 1006.5
set_pin_physical_constraints -pin_name {OUTD_I[9]} -layers {M4} -width 0.2 -depth 0.2 -side 4 -offset 1062.0
set_pin_physical_constraints -pin_name {OUTD_OEN[9]} -layers {M4} -width 0.2 -depth 0.2 -side 4 -offset 1072.5
set_pin_physical_constraints -pin_name {OUTD_REN[9]} -layers {M4} -width 0.2 -depth 0.2 -side 4 -offset 1076.5

# Right
set_pin_physical_constraints -pin_name {OUTD_CLK_I} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 152.0
set_pin_physical_constraints -pin_name {OUTD_CLK_OEN} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 162.5
set_pin_physical_constraints -pin_name {OUTD_CLK_REN} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 166.5
set_pin_physical_constraints -pin_name {OUTD_I[0]} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 222.0
set_pin_physical_constraints -pin_name {OUTD_OEN[0]} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 232.5
set_pin_physical_constraints -pin_name {OUTD_REN[0]} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 236.5
set_pin_physical_constraints -pin_name {OUTD_I[1]} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 292.0
set_pin_physical_constraints -pin_name {OUTD_OEN[1]} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 302.5
set_pin_physical_constraints -pin_name {OUTD_REN[1]} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 306.5
set_pin_physical_constraints -pin_name {OUTD_I[2]} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 362.0
set_pin_physical_constraints -pin_name {OUTD_OEN[2]} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 372.5
set_pin_physical_constraints -pin_name {OUTD_REN[2]} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 376.5
set_pin_physical_constraints -pin_name {OUTD_I[3]} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 432.0
set_pin_physical_constraints -pin_name {OUTD_OEN[3]} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 442.5
set_pin_physical_constraints -pin_name {OUTD_REN[3]} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 446.5
set_pin_physical_constraints -pin_name {OUTD_I[4]} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 502.0
set_pin_physical_constraints -pin_name {OUTD_OEN[4]} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 512.5
set_pin_physical_constraints -pin_name {OUTD_REN[4]} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 516.5
set_pin_physical_constraints -pin_name {vssd} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 572.0
set_pin_physical_constraints -pin_name {vddd} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 642.0
set_pin_physical_constraints -pin_name {OUTD_I[5]} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 852.0
set_pin_physical_constraints -pin_name {OUTD_OEN[5]} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 862.5
set_pin_physical_constraints -pin_name {OUTD_REN[5]} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 866.5
set_pin_physical_constraints -pin_name {OUTD_I[6]} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 922.0
set_pin_physical_constraints -pin_name {OUTD_OEN[6]} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 932.5
set_pin_physical_constraints -pin_name {OUTD_REN[6]} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 936.5
set_pin_physical_constraints -pin_name {OUTD_I[7]} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 992.0
set_pin_physical_constraints -pin_name {OUTD_OEN[7]} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 1002.5
set_pin_physical_constraints -pin_name {OUTD_REN[7]} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 1006.5
set_pin_physical_constraints -pin_name {OUTD_I[8]} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 1062.0
set_pin_physical_constraints -pin_name {OUTD_OEN[8]} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 1072.5
set_pin_physical_constraints -pin_name {OUTD_REN[8]} -layers {M5} -width 0.2 -depth 0.2 -side 5 -offset 1076.5

# Bottom
set_pin_physical_constraints -pin_name {SCS_OEN} -layers {M4} -width 0.2 -depth 0.2 -side 6 -offset 105.5
set_pin_physical_constraints -pin_name {SCS_REN} -layers {M4} -width 0.2 -depth 0.2 -side 6 -offset 109.5
set_pin_physical_constraints -pin_name {SCS_C} -layers {M4} -width 0.2 -depth 0.2 -side 6 -offset 115.0
set_pin_physical_constraints -pin_name {SDI_OEN} -layers {M4} -width 0.2 -depth 0.2 -side 6 -offset 175.5
set_pin_physical_constraints -pin_name {SDI_REN} -layers {M4} -width 0.2 -depth 0.2 -side 6 -offset 179.5
set_pin_physical_constraints -pin_name {SDI_C} -layers {M4} -width 0.2 -depth 0.2 -side 6 -offset 185.0
set_pin_physical_constraints -pin_name {SDO_I} -layers {M4} -width 0.2 -depth 0.2 -side 6 -offset 235.0
set_pin_physical_constraints -pin_name {SDO_OEN} -layers {M4} -width 0.2 -depth 0.2 -side 6 -offset 245.5
set_pin_physical_constraints -pin_name {SDO_REN} -layers {M4} -width 0.2 -depth 0.2 -side 6 -offset 249.5
set_pin_physical_constraints -pin_name {RST_OEN} -layers {M4} -width 0.2 -depth 0.2 -side 6 -offset 315.5
set_pin_physical_constraints -pin_name {RST_REN} -layers {M4} -width 0.2 -depth 0.2 -side 6 -offset 319.5
set_pin_physical_constraints -pin_name {RST_C} -layers {M4} -width 0.2 -depth 0.2 -side 6 -offset 325.0

# Analog Boundary
set_pin_physical_constraints -pin_name {IN_ADC1_P} -layers {M5} -width 0.2 -depth 0.2 -side 1 -offset 554.0
set_pin_physical_constraints -pin_name {IN_ADC1_N} -layers {M5} -width 0.2 -depth 0.2 -side 1 -offset 548.6
set_pin_physical_constraints -pin_name {IN_ADC2_P} -layers {M5} -width 0.2 -depth 0.2 -side 1 -offset 537.8
set_pin_physical_constraints -pin_name {IN_ADC2_N} -layers {M5} -width 0.2 -depth 0.2 -side 1 -offset 532.4
set_pin_physical_constraints -pin_name {IN_ADC3_P} -layers {M5} -width 0.2 -depth 0.2 -side 1 -offset 521.6
set_pin_physical_constraints -pin_name {IN_ADC3_N} -layers {M5} -width 0.2 -depth 0.2 -side 1 -offset 516.2
set_pin_physical_constraints -pin_name {IN_ADC4_P} -layers {M5} -width 0.2 -depth 0.2 -side 1 -offset 505.4
set_pin_physical_constraints -pin_name {IN_ADC4_N} -layers {M5} -width 0.2 -depth 0.2 -side 1 -offset 500.0
set_pin_physical_constraints -pin_name {IN_ADC_TEG_P} -layers {M5} -width 0.2 -depth 0.2 -side 1 -offset 130.4
set_pin_physical_constraints -pin_name {IN_ADC_TEG_N} -layers {M5} -width 0.2 -depth 0.2 -side 1 -offset 125.0
