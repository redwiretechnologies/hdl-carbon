# SPDX-License-Identifier: Apache-2.0

# ad9361 slave

set_property  -dict {PACKAGE_PIN  AG6   IOSTANDARD LVDS    DIFF_TERM_ADV TERM_100} [get_ports rx_clk_in_1_p]
set_property  -dict {PACKAGE_PIN  AG5   IOSTANDARD LVDS    DIFF_TERM_ADV TERM_100} [get_ports rx_clk_in_1_n]
set_property  -dict {PACKAGE_PIN  AJ5   IOSTANDARD LVDS    DIFF_TERM_ADV TERM_100} [get_ports rx_frame_in_1_p]
set_property  -dict {PACKAGE_PIN  AK5   IOSTANDARD LVDS    DIFF_TERM_ADV TERM_100} [get_ports rx_frame_in_1_n]
set_property  -dict {PACKAGE_PIN  AH6   IOSTANDARD LVDS    DIFF_TERM_ADV TERM_100} [get_ports rx_data_in_1_p[0]]
set_property  -dict {PACKAGE_PIN  AJ6   IOSTANDARD LVDS    DIFF_TERM_ADV TERM_100} [get_ports rx_data_in_1_n[0]]
set_property  -dict {PACKAGE_PIN  AH7   IOSTANDARD LVDS    DIFF_TERM_ADV TERM_100} [get_ports rx_data_in_1_p[1]]
set_property  -dict {PACKAGE_PIN  AJ7   IOSTANDARD LVDS    DIFF_TERM_ADV TERM_100} [get_ports rx_data_in_1_n[1]]
set_property  -dict {PACKAGE_PIN  AF6   IOSTANDARD LVDS    DIFF_TERM_ADV TERM_100} [get_ports rx_data_in_1_p[2]]
set_property  -dict {PACKAGE_PIN  AF5   IOSTANDARD LVDS    DIFF_TERM_ADV TERM_100} [get_ports rx_data_in_1_n[2]]
set_property  -dict {PACKAGE_PIN  AK9   IOSTANDARD LVDS    DIFF_TERM_ADV TERM_100} [get_ports rx_data_in_1_p[3]]
set_property  -dict {PACKAGE_PIN  AK8   IOSTANDARD LVDS    DIFF_TERM_ADV TERM_100} [get_ports rx_data_in_1_n[3]]
set_property  -dict {PACKAGE_PIN  AJ10  IOSTANDARD LVDS    DIFF_TERM_ADV TERM_100} [get_ports rx_data_in_1_p[4]]
set_property  -dict {PACKAGE_PIN  AK10  IOSTANDARD LVDS    DIFF_TERM_ADV TERM_100} [get_ports rx_data_in_1_n[4]]
set_property  -dict {PACKAGE_PIN  AJ11  IOSTANDARD LVDS    DIFF_TERM_ADV TERM_100} [get_ports rx_data_in_1_p[5]]
set_property  -dict {PACKAGE_PIN  AK11  IOSTANDARD LVDS    DIFF_TERM_ADV TERM_100} [get_ports rx_data_in_1_n[5]]
set_property  -dict {PACKAGE_PIN  AH9   IOSTANDARD LVDS}   [get_ports tx_clk_out_1_p]
set_property  -dict {PACKAGE_PIN  AJ9   IOSTANDARD LVDS}   [get_ports tx_clk_out_1_n]
set_property  -dict {PACKAGE_PIN  AK13  IOSTANDARD LVDS}   [get_ports tx_frame_out_1_p]
set_property  -dict {PACKAGE_PIN  AK12  IOSTANDARD LVDS}   [get_ports tx_frame_out_1_n]
set_property  -dict {PACKAGE_PIN  AH12  IOSTANDARD LVDS}   [get_ports tx_data_out_1_p[0]]
set_property  -dict {PACKAGE_PIN  AJ12  IOSTANDARD LVDS}   [get_ports tx_data_out_1_n[0]]
set_property  -dict {PACKAGE_PIN  AG8   IOSTANDARD LVDS}   [get_ports tx_data_out_1_p[1]]
set_property  -dict {PACKAGE_PIN  AH8   IOSTANDARD LVDS}   [get_ports tx_data_out_1_n[1]]
set_property  -dict {PACKAGE_PIN  AG13  IOSTANDARD LVDS}   [get_ports tx_data_out_1_p[2]]
set_property  -dict {PACKAGE_PIN  AH13  IOSTANDARD LVDS}   [get_ports tx_data_out_1_n[2]]
set_property  -dict {PACKAGE_PIN  AF11  IOSTANDARD LVDS}   [get_ports tx_data_out_1_p[3]]
set_property  -dict {PACKAGE_PIN  AG11  IOSTANDARD LVDS}   [get_ports tx_data_out_1_n[3]]
set_property  -dict {PACKAGE_PIN  AF10  IOSTANDARD LVDS}   [get_ports tx_data_out_1_p[4]]
set_property  -dict {PACKAGE_PIN  AG10  IOSTANDARD LVDS}   [get_ports tx_data_out_1_n[4]]
set_property  -dict {PACKAGE_PIN  AF8   IOSTANDARD LVDS}   [get_ports tx_data_out_1_p[5]]
set_property  -dict {PACKAGE_PIN  AF7   IOSTANDARD LVDS}   [get_ports tx_data_out_1_n[5]]

set_property  -dict {PACKAGE_PIN  AK7   IOSTANDARD LVCMOS18}  [get_ports gpio_status_1[0]]
set_property  -dict {PACKAGE_PIN  AK6   IOSTANDARD LVCMOS18}  [get_ports gpio_status_1[1]]
set_property  -dict {PACKAGE_PIN  AJ2   IOSTANDARD LVCMOS18}  [get_ports gpio_status_1[2]]
set_property  -dict {PACKAGE_PIN  AK2   IOSTANDARD LVCMOS18}  [get_ports gpio_status_1[3]]
set_property  -dict {PACKAGE_PIN  AH2   IOSTANDARD LVCMOS18}  [get_ports gpio_status_1[4]]
set_property  -dict {PACKAGE_PIN  AH3   IOSTANDARD LVCMOS18}  [get_ports gpio_status_1[5]]
set_property  -dict {PACKAGE_PIN  AH4   IOSTANDARD LVCMOS18}  [get_ports gpio_status_1[6]]
set_property  -dict {PACKAGE_PIN  AJ4   IOSTANDARD LVCMOS18}  [get_ports gpio_status_1[7]]
set_property  -dict {PACKAGE_PIN  AF3   IOSTANDARD LVCMOS18}  [get_ports gpio_ctl_1[0]]
set_property  -dict {PACKAGE_PIN  AG3   IOSTANDARD LVCMOS18}  [get_ports gpio_ctl_1[1]]
set_property  -dict {PACKAGE_PIN  AK3   IOSTANDARD LVCMOS18}  [get_ports gpio_ctl_1[2]]
set_property  -dict {PACKAGE_PIN  AK4   IOSTANDARD LVCMOS18}  [get_ports gpio_ctl_1[3]]
set_property  -dict {PACKAGE_PIN  AH1   IOSTANDARD LVCMOS18}  [get_ports gpio_en_agc_1]
set_property  -dict {PACKAGE_PIN  D15   IOSTANDARD LVCMOS18}  [get_ports gpio_resetb_1]
set_property  -dict {PACKAGE_PIN  AF2   IOSTANDARD LVCMOS18}  [get_ports enable_1]
set_property  -dict {PACKAGE_PIN  AF1   IOSTANDARD LVCMOS18}  [get_ports txnrx_1]

set_property  -dict {PACKAGE_PIN  AG1   IOSTANDARD LVCMOS18}  [get_ports ad_clk_out_1]
set_property  -dict {PACKAGE_PIN  C13   IOSTANDARD LVCMOS18}  [get_ports ad_rfic_gpo_1[0]]
set_property  -dict {PACKAGE_PIN  C14   IOSTANDARD LVCMOS18}  [get_ports ad_rfic_gpo_1[1]]
set_property  -dict {PACKAGE_PIN  E13   IOSTANDARD LVCMOS18}  [get_ports ad_rfic_gpo_1[2]]
set_property  -dict {PACKAGE_PIN  E14   IOSTANDARD LVCMOS18}  [get_ports ad_rfic_gpo_1[3]]

# clocks

create_clock -name rx_1_clk       -period   4.00 [get_ports rx_clk_in_1_p]

# Removing UNAVAILABLE_DURING_CALIBRATION Errors
#
#ERROR: [DRC PDRC-203] BITSLICE0 not available during BISC: The port
#tx_data_out_1_p[3] is assigned to a PACKAGE_PIN that uses BITSLICE_1 of a Byte
#that will be using calibration. The signal connected to tx_data_out_1_p[3]
#will not be available during calibration and will only be available after RDY
#asserts. If this condition is not acceptable for your design and board layout,
#tx_data_out_1_p[3] will have to be moved to another PACKAGE_PIN that is not
#undergoing calibration or be moved to a PACKAGE_PIN location that is not
#BITSLICE_0 or BITSLICE_6 on that same Byte. If this condition is acceptable
#for your design and board layout, this DRC can be bypassed by acknowledging
#the condition and setting the following XDC constraint:
#
#set_property UNAVAILABLE_DURING_CALIBRATION TRUE [get_ports tx_data_out_1_p[3]]

set_property UNAVAILABLE_DURING_CALIBRATION TRUE [get_ports tx_data_out_1_p[3]]

#ERROR: [DRC PDRC-203] BITSLICE0 not available during BISC: The port
#tx_data_out_1_p[4] is assigned to a PACKAGE_PIN that uses BITSLICE_0 of a Byte
#that will be using calibration. The signal connected to tx_data_out_1_p[4]
#will not be available during calibration and will only be available after RDY
#asserts. If this condition is not acceptable for your design and board layout,
#tx_data_out_1_p[4] will have to be moved to another PACKAGE_PIN that is not
#undergoing calibration or be moved to a PACKAGE_PIN location that is not
#BITSLICE_0 or BITSLICE_6 on that same Byte. If this condition is acceptable
#for your design and board layout, this DRC can be bypassed by acknowledging
#the condition and setting the following XDC constraint:
#
#set_property UNAVAILABLE_DURING_CALIBRATION TRUE [get_ports tx_data_out_1_p[4]]

set_property UNAVAILABLE_DURING_CALIBRATION TRUE [get_ports tx_data_out_1_p[4]]

#ERROR: [DRC PDRC-203] BITSLICE0 not available during BISC: The port
#tx_frame_out_1_p is assigned to a PACKAGE_PIN that uses BITSLICE_1 of a Byte
#that will be using calibration. The signal connected to tx_frame_out_1_p
#will not be available during calibration and will only be available after RDY
#asserts. If this condition is not acceptable for your design and board lay
#out, tx_frame_out_1_p will have to be moved to another PACKAGE_PIN that is not
#undergoing calibration or be moved to a PACKAGE_PIN location that is not
#BITSLICE_0 or BITSLICE_6 on that same Byte. If this condition is
#acceptable for your design and board layout, this DRC can be bypassed by
#acknowledging the condition and setting the following XDC constraint:
#
#set_property UNAVAILABLE_DURING_CALIBRATION TRUE [get_ports tx_frame_out_1_p]

set_property UNAVAILABLE_DURING_CALIBRATION TRUE [get_ports tx_frame_out_1_p]
