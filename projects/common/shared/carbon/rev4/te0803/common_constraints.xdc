# SPDX-License-Identifier: Apache-2.0

################################################################################
## GPIO Header
################################################################################

set_property -dict {PACKAGE_PIN D10 IOSTANDARD LVCMOS18} [get_ports {gpio_hdr[0]}]
set_property -dict {PACKAGE_PIN E10 IOSTANDARD LVCMOS18} [get_ports {gpio_hdr[1]}]
set_property -dict {PACKAGE_PIN B10 IOSTANDARD LVCMOS18} [get_ports {gpio_hdr[2]}]
set_property -dict {PACKAGE_PIN C11 IOSTANDARD LVCMOS18} [get_ports {gpio_hdr[3]}]
set_property -dict {PACKAGE_PIN C12 IOSTANDARD LVCMOS18} [get_ports {gpio_hdr[4]}]
set_property -dict {PACKAGE_PIN D12 IOSTANDARD LVCMOS18} [get_ports {gpio_hdr[5]}]
set_property -dict {PACKAGE_PIN K12 IOSTANDARD LVCMOS18} [get_ports {gpio_hdr[6]}]
set_property -dict {PACKAGE_PIN K13 IOSTANDARD LVCMOS18} [get_ports {gpio_hdr[7]}]
set_property -dict {PACKAGE_PIN J10 IOSTANDARD LVCMOS18} [get_ports {gpio_hdr[8]}]

################################################################################
## PCIE
################################################################################

#set_property  -dict {IO_BUFFER_TYPE none}   [get_ports pcie_rx_p[0]]
#set_property  -dict {IO_BUFFER_TYPE none}   [get_ports pcie_rx_n[0]]
#set_property  -dict {IO_BUFFER_TYPE none}   [get_ports pcie_rx_p[1]]
#set_property  -dict {IO_BUFFER_TYPE none}   [get_ports pcie_rx_n[1]]
#set_property  -dict {IO_BUFFER_TYPE none}   [get_ports pcie_rx_p[2]]
#set_property  -dict {IO_BUFFER_TYPE none}   [get_ports pcie_rx_n[2]]
#set_property  -dict {IO_BUFFER_TYPE none}   [get_ports pcie_rx_p[3]]
#set_property  -dict {IO_BUFFER_TYPE none}   [get_ports pcie_rx_n[3]]
#
#set_property  -dict {IO_BUFFER_TYPE none}   [get_ports pcie_tx_p[0]]
#set_property  -dict {IO_BUFFER_TYPE none}   [get_ports pcie_tx_n[0]]
#set_property  -dict {IO_BUFFER_TYPE none}   [get_ports pcie_tx_p[1]]
#set_property  -dict {IO_BUFFER_TYPE none}   [get_ports pcie_tx_n[1]]
#set_property  -dict {IO_BUFFER_TYPE none}   [get_ports pcie_tx_p[2]]
#set_property  -dict {IO_BUFFER_TYPE none}   [get_ports pcie_tx_n[2]]
#set_property  -dict {IO_BUFFER_TYPE none}   [get_ports pcie_tx_p[3]]
#set_property  -dict {IO_BUFFER_TYPE none}   [get_ports pcie_tx_n[3]]
#
#set_property  -dict {PACKAGE_PIN  F15   IOSTANDARD LVCMOS18}   [get_ports pcie_rst]
