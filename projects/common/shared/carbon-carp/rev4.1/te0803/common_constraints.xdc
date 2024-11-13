# SPDX-License-Identifier: Apache-2.0

################################################################################
## rfp_gpo connections
################################################################################

#Current connected to MIO44. Will need to change this pin in future revs
#set_property -dict {PACKAGE_PIN J10 IOSTANDARD LVCMOS18} [get_ports {rfp_gpo_0[0]}]
#set_property -dict {PACKAGE_PIN J10 IOSTANDARD LVCMOS18} [get_ports {rfp_gpo_0[1]}]
#set_property -dict {PACKAGE_PIN K13 IOSTANDARD LVCMOS18} [get_ports {rfp_gpo_0[2]}]
set_property -dict {PACKAGE_PIN J10 IOSTANDARD LVCMOS18} [get_ports {rfp_gpo_0[0]}]
set_property -dict {PACKAGE_PIN K13 IOSTANDARD LVCMOS18} [get_ports {rfp_gpo_0[1]}]

set_property -dict {PACKAGE_PIN K12 IOSTANDARD LVCMOS18} [get_ports {rfp_gpo_1[0]}]
set_property -dict {PACKAGE_PIN D12 IOSTANDARD LVCMOS18} [get_ports {rfp_gpo_1[1]}]
set_property -dict {PACKAGE_PIN C12 IOSTANDARD LVCMOS18} [get_ports {rfp_gpo_1[2]}]

set_property -dict {PACKAGE_PIN C11 IOSTANDARD LVCMOS18} [get_ports {rfp_gpo_2[0]}]
set_property -dict {PACKAGE_PIN B10 IOSTANDARD LVCMOS18} [get_ports {rfp_gpo_2[1]}]
set_property -dict {PACKAGE_PIN E10 IOSTANDARD LVCMOS18} [get_ports {rfp_gpo_2[2]}]

set_property -dict {PACKAGE_PIN D10 IOSTANDARD LVCMOS18} [get_ports {rfp_gpo_3[0]}]
set_property -dict {PACKAGE_PIN F15 IOSTANDARD LVCMOS18} [get_ports {rfp_gpo_3[1]}]
#Current connected to MIO36. Will need to change this pin in future revs
#set_property -dict {PACKAGE_PIN F15 IOSTANDARD LVCMOS18} [get_ports {rfp_gpo_3[2]}]

#Current connected to MIO35. Will need to change this pin in future revs
#set_property -dict {PACKAGE_PIN D10 IOSTANDARD LVCMOS18} [get_ports {gps_pps}]
