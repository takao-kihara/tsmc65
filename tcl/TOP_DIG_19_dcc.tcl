# Version 1.00 for LE5
# 合成の設定
set verilogout_no_tri "true"
set library_path "/mnt/nas/pdk/tsmc65nm/tcbn65gpluslvt/TSMCHOME/digital/Front_End/timing_power_noise/CCS/tcbn65gpluslvt_200a"
lappend search_path $library_path

set ULLIBRARY tcbn65gpluslvtwc_ccs
set target_library {tcbn65gpluslvtwc_ccs.db}
set synthetic_library "dw_foundation.sldb"
set link_library [list tcbn65gpluslvtwc_ccs.db $synthetic_library]

set hdlin_unsigned_integers "false"

#使用しないセル
set_dont_use {tcbn65gpluslvtwc_ccs/CK* tcbn65gpluslvtwc_ccs/FC* tcbn65gpluslvtwc_ccs/FI* tcbn65gpluslvtwc_ccs/HC* tcbn65gpluslvtwc_ccs/HI* tcbn65gpluslvtwc_ccs/L* tcbn65gpluslvtwc_ccs/SD* tcbn65gpluslvtwc_ccs/SED* tcbn65gpluslvtwc_ccs/DEL* tcbn65gpluslvtwc_ccs/TIE* tcbn65gpluslvtwc_ccs/G*}

read_file {../rtl} -autoread -format verilog -top TOP_DIG_19
current_design TOP_DIG_19
check_design
# クロック周期などのタイミング設定を読み込む. 
read_sdc ../rtl/TOP/TOP_DIG_19.sdc
# 全ての制約違反のサマリ
report_constraint -all_violators
# 面積をできる限り小さくする. 
set_max_area 0
#削除しない
set compile_seqmap_propagate_constants false
set compile_delete_unloaded_sequential_cells false
set_dont_touch SPI
# 全体を展開してから論理合成
compile_ultra -no_autoungroup
# ネットの名前に英大文字と数字以外が入らないようにする. 
define_name_rules verilog -allowed "A-Z0-9_"
change_names -rules verilog -hierarchy
# ネットリストを書き出す
write -f verilog -hier -o TOP_DIG_19_net.v
# データベースに保存
write -f ddc -hier -o TOP_DIG_19.ddc
# SDFを書き出す
write_sdf -version 1.0 TOP_DIG_19.sdf
# タイミング, 面積等を出力. 
#redirect TSMC_DIGITAL_1.max.timing.log { report_timing -delay max -max_paths 20 }
#redirect TSMC_DIGITAL_1.min.timing.log { report_timing -delay min -max_paths 20 }
#redirect TSMC_DIGITAL_1.area.log { report_area }
#quit
