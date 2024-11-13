# SPDX-License-Identifier: Apache-2.0

################################################################################
## GPIO Header
################################################################################

set_property -dict {PACKAGE_PIN D10 IOSTANDARD LVCMOS18} [get_ports {gpio_hdr[0]}]
set_property -dict {PACKAGE_PIN E10 IOSTANDARD LVCMOS18} [get_ports {gpio_hdr[1]}]
set_property -dict {PACKAGE_PIN A10 IOSTANDARD LVCMOS18} [get_ports {gpio_hdr[2]}]
set_property -dict {PACKAGE_PIN B10 IOSTANDARD LVCMOS18} [get_ports {gpio_hdr[3]}]
set_property -dict {PACKAGE_PIN C11 IOSTANDARD LVCMOS18} [get_ports {gpio_hdr[4]}]
set_property -dict {PACKAGE_PIN D11 IOSTANDARD LVCMOS18} [get_ports {gpio_hdr[5]}]
set_property -dict {PACKAGE_PIN B11 IOSTANDARD LVCMOS18} [get_ports {gpio_hdr[6]}]
set_property -dict {PACKAGE_PIN C12 IOSTANDARD LVCMOS18} [get_ports {gpio_hdr[7]}]
set_property -dict {PACKAGE_PIN A11 IOSTANDARD LVCMOS18} [get_ports {gpio_hdr[8]}]

################################################################################
## PCIE
################################################################################

#set_property  -dict {PACKAGE_PIN  R4    IOSTANDARD LVDS}   [get_ports pcie_rx_p[0]]
#set_property  -dict {PACKAGE_PIN  R3    IOSTANDARD LVDS}   [get_ports pcie_rx_n[0]]
#set_property  -dict {PACKAGE_PIN  P2    IOSTANDARD LVDS}   [get_ports pcie_rx_p[1]]
#set_property  -dict {PACKAGE_PIN  P1    IOSTANDARD LVDS}   [get_ports pcie_rx_n[1]]
#set_property  -dict {PACKAGE_PIN  M2    IOSTANDARD LVDS}   [get_ports pcie_rx_p[2]]
#set_property  -dict {PACKAGE_PIN  M1    IOSTANDARD LVDS}   [get_ports pcie_rx_n[2]]
#set_property  -dict {PACKAGE_PIN  L4    IOSTANDARD LVDS}   [get_ports pcie_rx_p[3]]
#set_property  -dict {PACKAGE_PIN  L3    IOSTANDARD LVDS}   [get_ports pcie_rx_n[3]]
#
#set_property  -dict {PACKAGE_PIN  P6    IOSTANDARD LVDS}   [get_ports pcie_tx_p[0]]
#set_property  -dict {PACKAGE_PIN  P5    IOSTANDARD LVDS}   [get_ports pcie_tx_n[0]]
#set_property  -dict {PACKAGE_PIN  N4    IOSTANDARD LVDS}   [get_ports pcie_tx_p[1]]
#set_property  -dict {PACKAGE_PIN  N3    IOSTANDARD LVDS}   [get_ports pcie_tx_n[1]]
#set_property  -dict {PACKAGE_PIN  M6    IOSTANDARD LVDS}   [get_ports pcie_tx_p[2]]
#set_property  -dict {PACKAGE_PIN  M5    IOSTANDARD LVDS}   [get_ports pcie_tx_n[2]]
#set_property  -dict {PACKAGE_PIN  K6    IOSTANDARD LVDS}   [get_ports pcie_tx_p[3]]
#set_property  -dict {PACKAGE_PIN  K5    IOSTANDARD LVDS}   [get_ports pcie_tx_n[3]]
#
#set_property  -dict {PACKAGE_PIN  F15   IOSTANDARD LVCMOS18}   [get_ports pcie_rst]
