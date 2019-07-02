set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA

#面積最小              
set_max_area 0
#ファンアウトの制限
set_max_fanout 12 [current_design TOP_DIG_19]

#設定値
#クロック(20-30％速く) 標準2.17
set FS 1.73
#入力遅延
#DFD1LVTを使用（負荷容量0.45fF 0.00045pF）LH:0.0610ns HL:0.0685ns
set INL 0.5
#出力遅延 (クロックの70％)
set OUTL 1.21
#クロックのばらつき
set CLKU 0.15
#負荷容量 IO(PDDW04DGAZ_G)
set CL 0.0105

#DFE
#クロックの定義（分周器を含む）変数を用いる
create_clock  [get_ports ADC_DFE01/CLK_adc1] -name CLK_adc1 -period $FS -waveform {0 0.865} 
create_clock  [get_ports ADC_DFE01/CLK_adc2] -name CLK_adc2 -period $FS -waveform {0.4325 1.2975} 
create_clock  [get_ports ADC_DFE01/CLK_adc3] -name CLK_adc3 -period $FS -waveform {0.865 1.73} 
create_clock  [get_ports ADC_DFE01/CLK_adc4] -name CLK_adc4 -period $FS -waveform {1.2975 2.1625} 
create_generated_clock -name CLK_adc1_2 -source [get_ports ADC_DFE01/CLK_adc1] -divide_by 2 [get_pins ADC_DFE01/divider_DFE_1/Q]
create_generated_clock -name CLK_adc1_4 -source [get_pins ADC_DFE01/divider_DFE_1/Q] -divide_by 2 [get_pins ADC_DFE01/divider_DFE_2/Q]
create_generated_clock -name CLK_adc1_8 -source [get_pins ADC_DFE01/divider_DFE_2/Q] -divide_by 2 [get_pins ADC_DFE01/divider_DFE_3/Q]
create_generated_clock -name CLK_adc1_16 -source [get_pins ADC_DFE01/divider_DFE_3/Q] -divide_by 2 [get_pins ADC_DFE01/divider_DFE_4/Q]
create_generated_clock -name CLK_adc1_32 -source [get_pins ADC_DFE01/divider_DFE_4/Q] -divide_by 2 [get_pins ADC_DFE01/divider_DFE_5/Q]
# クロックの立ち上がりから入力が遷移するまでの遅延の定義(入力遅延)
set_input_delay $INL -clock CLK_adc1 [get_ports {ADC_DFE01/vcntrl_vco1_p}]
set_input_delay $INL -clock CLK_adc1 [get_ports {ADC_DFE01/sw_vco1_p}]
set_input_delay $INL -clock CLK_adc1 [get_ports {ADC_DFE01/vcntrl_vco1_n}]
set_input_delay $INL -clock CLK_adc1 [get_ports {ADC_DFE01/sw_vco1_n}]
set_input_delay $INL -clock CLK_adc2 [get_ports {ADC_DFE01/vcntrl_vco2_p}]
set_input_delay $INL -clock CLK_adc2 [get_ports {ADC_DFE01/sw_vco2_p}]
set_input_delay $INL -clock CLK_adc2 [get_ports {ADC_DFE01/vcntrl_vco2_n}]
set_input_delay $INL -clock CLK_adc2 [get_ports {ADC_DFE01/sw_vco2_n}]
set_input_delay $INL -clock CLK_adc3 [get_ports {ADC_DFE01/vcntrl_vco3_p}]
set_input_delay $INL -clock CLK_adc3 [get_ports {ADC_DFE01/sw_vco3_p}]
set_input_delay $INL -clock CLK_adc3 [get_ports {ADC_DFE01/vcntrl_vco3_n}]
set_input_delay $INL -clock CLK_adc3 [get_ports {ADC_DFE01/sw_vco3_n}]
set_input_delay $INL -clock CLK_adc4 [get_ports {ADC_DFE01/vcntrl_vco4_p}]
set_input_delay $INL -clock CLK_adc4 [get_ports {ADC_DFE01/sw_vco4_p}]
set_input_delay $INL -clock CLK_adc4 [get_ports {ADC_DFE01/vcntrl_vco4_n}]
set_input_delay $INL -clock CLK_adc4 [get_ports {ADC_DFE01/sw_vco4_n}]
# クロックのエッジに対して出力の余裕(出力遅延)
set_output_delay $OUTL -clock CLK_adc1 [get_ports {outd_i[*]}]
#クロックの立ち上がり・下がりのばらつき
set_clock_uncertainty $CLKU [get_ports ADC_DFE01/CLK_adc1]
set_clock_uncertainty $CLKU [get_pins ADC_DFE01/divider_DFE_1/Q]
set_clock_uncertainty $CLKU [get_pins ADC_DFE01/divider_DFE_2/Q]
set_clock_uncertainty $CLKU [get_pins ADC_DFE01/divider_DFE_3/Q]
set_clock_uncertainty $CLKU [get_pins ADC_DFE01/divider_DFE_4/Q]
set_clock_uncertainty $CLKU [get_pins ADC_DFE01/divider_DFE_5/Q]
set_clock_uncertainty $CLKU [get_ports ADC_DFE01/CLK_adc2]
set_clock_uncertainty $CLKU [get_ports ADC_DFE01/CLK_adc3]
set_clock_uncertainty $CLKU [get_ports ADC_DFE01/CLK_adc4]
#入力設定
set_driving_cell -lib_cell INVD1LVT [get_ports {ADC_DFE01/vcntrl_vco1_p}]
set_driving_cell -lib_cell INVD1LVT [get_ports {ADC_DFE01/sw_vco1_p}]
set_driving_cell -lib_cell INVD1LVT [get_ports {ADC_DFE01/vcntrl_vco1_n}]
set_driving_cell -lib_cell INVD1LVT [get_ports {ADC_DFE01/sw_vco1_n}]
set_driving_cell -lib_cell INVD1LVT [get_ports {ADC_DFE01/vcntrl_vco2_p}]
set_driving_cell -lib_cell INVD1LVT [get_ports {ADC_DFE01/sw_vco2_p}]
set_driving_cell -lib_cell INVD1LVT [get_ports {ADC_DFE01/vcntrl_vco2_n}]
set_driving_cell -lib_cell INVD1LVT [get_ports {ADC_DFE01/sw_vco2_n}]
set_driving_cell -lib_cell INVD1LVT [get_ports {ADC_DFE01/vcntrl_vco3_p}]
set_driving_cell -lib_cell INVD1LVT [get_ports {ADC_DFE01/sw_vco3_p}]
set_driving_cell -lib_cell INVD1LVT [get_ports {ADC_DFE01/vcntrl_vco3_n}]
set_driving_cell -lib_cell INVD1LVT [get_ports {ADC_DFE01/sw_vco3_n}]
set_driving_cell -lib_cell INVD1LVT [get_ports {ADC_DFE01/vcntrl_vco4_p}]
set_driving_cell -lib_cell INVD1LVT [get_ports {ADC_DFE01/sw_vco4_p}]
set_driving_cell -lib_cell INVD1LVT [get_ports {ADC_DFE01/vcntrl_vco4_n}]
set_driving_cell -lib_cell INVD1LVT [get_ports {ADC_DFE01/sw_vco4_n}]
#理想ネットワーク
set_ideal_network [get_ports ADC_DFE01/CLK_adc1]
set_ideal_network [get_ports ADC_DFE01/CLK_adc2]
set_ideal_network [get_ports ADC_DFE01/CLK_adc3]
set_ideal_network [get_ports ADC_DFE01/CLK_adc4]

#ADC_TEG
#ADC_TEGのクロックの定義（分周器を含む）変数を用いる
create_clock  [get_ports ADC_DFE01/CLK_ADC_TEG] -name CLK -period $FS -waveform {0 0.865} 
create_generated_clock -name CLK_2 -source [get_ports ADC_DFE01/CLK_ADC_TEG] -divide_by 2 [get_pins ADC_DFE01/divider_ADC_TEG_1/Q]
create_generated_clock -name CLK_4 -source [get_pins ADC_DFE01/divider_ADC_TEG_1/Q] -divide_by 2 [get_pins ADC_DFE01/divider_ADC_TEG_2/Q]
create_generated_clock -name CLK_8 -source [get_pins ADC_DFE01/divider_ADC_TEG_2/Q] -divide_by 2 [get_pins ADC_DFE01/divider_ADC_TEG_3/Q]
# クロックの立ち上がりから入力が遷移するまでの遅延の定義(入力遅延)
set_input_delay $INL -clock CLK [get_ports {ADC_DFE01/vcntrl_vco5_p}]
set_input_delay $INL -clock CLK [get_ports {ADC_DFE01/sw_vco5_p}]
set_input_delay $INL -clock CLK [get_ports {ADC_DFE01/vcntrl_vco5_n}]
set_input_delay $INL -clock CLK [get_ports {ADC_DFE01/sw_vco5_n}]
# クロックのエッジに対して出力の余裕(出力遅延)
set_output_delay $OUTL -clock CLK [get_ports {outd_i[*]}]
#入力設定
set_driving_cell -lib_cell INVD1LVT [get_ports {ADC_DFE01/vcntrl_vco5_p}]
set_driving_cell -lib_cell INVD1LVT [get_ports {ADC_DFE01/sw_vco5_p}]
set_driving_cell -lib_cell INVD1LVT [get_ports {ADC_DFE01/vcntrl_vco5_n}]
set_driving_cell -lib_cell INVD1LVT [get_ports {ADC_DFE01/sw_vco5_n}]
#クロックの立ち上がり・下がりのばらつき
set_clock_uncertainty $CLKU [get_ports ADC_DFE01/CLK_ADC_TEG]
set_clock_uncertainty $CLKU [get_pins ADC_DFE01/divider_ADC_TEG_1/Q]
set_clock_uncertainty $CLKU [get_pins ADC_DFE01/divider_ADC_TEG_2/Q]
set_clock_uncertainty $CLKU [get_pins ADC_DFE01/divider_ADC_TEG_3/Q]
#理想ネットワーク
set_ideal_network [get_ports ADC_DFE01/CLK_ADC_TEG]

#共通
#負荷容量　
set_load -pin_load $CL [get_ports {outd_i[*]}]
