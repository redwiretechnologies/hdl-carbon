# SPDX-License-Identifier: Apache-2.0

# create board design
# default ports

create_bd_port -dir I -from 94 -to 0 gpio_i
create_bd_port -dir O -from 94 -to 0 gpio_o
create_bd_port -dir O -from 94 -to 0 gpio_t

# instance: sys_ps8

ad_ip_instance zynq_ultra_ps_e sys_ps8
apply_bd_automation -rule xilinx.com:bd_rule:zynq_ultra_ps_e \
  -config {apply_board_preset 1}  [get_bd_cells sys_ps8]

ad_ip_parameter sys_ps8 CONFIG.PSU__USE__M_AXI_GP0 0
ad_ip_parameter sys_ps8 CONFIG.PSU__USE__M_AXI_GP1 0
ad_ip_parameter sys_ps8 CONFIG.PSU__USE__M_AXI_GP2 1
ad_ip_parameter sys_ps8 CONFIG.PSU__MAXIGP2__DATA_WIDTH 32
ad_ip_parameter sys_ps8 CONFIG.PSU__FPGA_PL0_ENABLE 1
ad_ip_parameter sys_ps8 CONFIG.PSU__CRL_APB__PL0_REF_CTRL__SRCSEL {IOPLL}
ad_ip_parameter sys_ps8 CONFIG.PSU__CRL_APB__PL0_REF_CTRL__FREQMHZ 100
ad_ip_parameter sys_ps8 CONFIG.PSU__FPGA_PL1_ENABLE 1
ad_ip_parameter sys_ps8 CONFIG.PSU__FPGA_PL2_ENABLE 1
ad_ip_parameter sys_ps8 CONFIG.PSU__CRL_APB__PL1_REF_CTRL__SRCSEL {IOPLL}
ad_ip_parameter sys_ps8 CONFIG.PSU__CRL_APB__PL1_REF_CTRL__FREQMHZ 250
ad_ip_parameter sys_ps8 CONFIG.PSU__CRL_APB__PL2_REF_CTRL__SRCSEL {IOPLL}
ad_ip_parameter sys_ps8 CONFIG.PSU__CRL_APB__PL2_REF_CTRL__FREQMHZ 500
ad_ip_parameter sys_ps8 CONFIG.PSU__USE__IRQ0 1
ad_ip_parameter sys_ps8 CONFIG.PSU__USE__IRQ1 1
ad_ip_parameter sys_ps8 CONFIG.PSU__GPIO_EMIO__PERIPHERAL__ENABLE 1

set_property -dict [list CONFIG.PSU__SPI0__PERIPHERAL__ENABLE {1} \
						 CONFIG.PSU__SPI0__PERIPHERAL__IO {MIO 26 .. 31} \
                         CONFIG.PSU__SPI0__GRP_SS1__ENABLE {1} \
                         CONFIG.PSU__CRL_APB__SPI0_REF_CTRL__FREQMHZ 100 \
                         CONFIG.PSU__SPI1__PERIPHERAL__ENABLE {1} \
                         CONFIG.PSU__SPI1__PERIPHERAL__IO {MIO 32 .. 37} \
                         CONFIG.PSU__SPI1__GRP_SS1__ENABLE {1} \
                         CONFIG.PSU__CRL_APB__SPI1_REF_CTRL__FREQMHZ 100] [get_bd_cells sys_ps8]

# Carbon specific properties

set_property -dict [list CONFIG.PSU__USB0__PERIPHERAL__ENABLE {1} \
                         CONFIG.PSU__USB0__RESET__ENABLE {1} \
                         CONFIG.PSU__USB0__RESET__IO {MIO 27} \
                         CONFIG.PSU__USB__RESET__MODE {Separate MIO Pin} \
                         CONFIG.PSU__USB1__PERIPHERAL__ENABLE {1} \
                         CONFIG.PSU__USB1__RESET__ENABLE {1} \
                         CONFIG.PSU__USB1__RESET__IO {MIO 40} \
                         CONFIG.PSU__USB3_0__PERIPHERAL__ENABLE {1} \
                         CONFIG.PSU__USB3_0__PERIPHERAL__IO {GT Lane2} \
                         CONFIG.PSU__USB3_1__PERIPHERAL__ENABLE {1}] [get_bd_cells sys_ps8]

set_property -dict [list CONFIG.PSU__PCIE__PERIPHERAL__ENABLE {1} \
    					 CONFIG.PSU__PCIE__PERIPHERAL__ROOTPORT_IO {MIO 41} \
                         CONFIG.PSU__PCIE__MAXIMUM_LINK_WIDTH {x2} \
                         CONFIG.PSU__PCIE__DEVICE_PORT_TYPE {Root Port} \
                         CONFIG.PSU__PCIE__CLASS_CODE_BASE {0x06} \
                         CONFIG.PSU__PCIE__CLASS_CODE_SUB {0x4}] [get_bd_cells sys_ps8]

set_property -dict [list CONFIG.PSU__SD1__PERIPHERAL__ENABLE {1} \
                         CONFIG.PSU__SD1__PERIPHERAL__IO {MIO 46 .. 51} \
                         CONFIG.PSU__SD1__GRP_CD__ENABLE {1} \
                         CONFIG.PSU__SD1__SLOT_TYPE {SD 2.0}] [get_bd_cells sys_ps8]

set_property -dict [list CONFIG.PSU__I2C0__PERIPHERAL__ENABLE {1} \
                         CONFIG.PSU__I2C0__PERIPHERAL__IO {MIO 14 .. 15}] [get_bd_cells sys_ps8]

set_property -dict [list CONFIG.PSU__UART1__PERIPHERAL__ENABLE {1} \
                         CONFIG.PSU__UART1__PERIPHERAL__IO {MIO 16 .. 17}] [get_bd_cells sys_ps8]

set_property -dict [list CONFIG.PSU__I2C1__PERIPHERAL__ENABLE {1} \
                         CONFIG.PSU__I2C1__PERIPHERAL__IO {MIO 76 .. 77}] [get_bd_cells sys_ps8]

set_property -dict [list CONFIG.PSU__UART0__PERIPHERAL__ENABLE {1} \
                         CONFIG.PSU__UART0__PERIPHERAL__IO {MIO 18 .. 19}] [get_bd_cells sys_ps8]

set_property -dict [list CONFIG.PSU__GPIO0_MIO__PERIPHERAL__ENABLE {1} \
                         CONFIG.PSU__GPIO1_MIO__PERIPHERAL__ENABLE {1}] [get_bd_cells sys_ps8]

set_property -dict [list \
  CONFIG.PSU__PMU__PERIPHERAL__ENABLE {1} \
  CONFIG.PSU__PMU__GPI0__ENABLE {0} \
  CONFIG.PSU__PMU__GPI1__ENABLE {0} \
  CONFIG.PSU__PMU__GPI2__ENABLE {0} \
  CONFIG.PSU__PMU__GPI3__ENABLE {0} \
  CONFIG.PSU__PMU__GPI4__ENABLE {0} \
  CONFIG.PSU__PMU__GPI5__ENABLE {0} \
  CONFIG.PSU__PMU__GPO0__ENABLE {0} \
  CONFIG.PSU__PMU__GPO2__ENABLE {0} \
  CONFIG.PSU__PMU__GPO3__ENABLE {0} \
  CONFIG.PSU__PMU__GPO4__ENABLE {0} \
  CONFIG.PSU__PMU__GPO5__ENABLE {0} \
] [get_bd_cells sys_ps8]

set full_board [current_board_part]
set som_format [string range $full_board 10 15]

if {$som_format=="te0803"} {
    puts "Worked"
    set_property -dict [list CONFIG.PSU__PSS_ALT_REF_CLK__ENABLE {0} \
                             CONFIG.PSU__USB0__REF_CLK_SEL {Ref Clk0} \
                             CONFIG.PSU__USB0__REF_CLK_FREQ {100} \
                             CONFIG.PSU__USB1__REF_CLK_SEL {Ref Clk0} \
                             CONFIG.PSU__USB1__REF_CLK_FREQ {100} \
                             CONFIG.PSU__PCIE__REF_CLK_SEL {Ref Clk0}] [get_bd_cells sys_ps8]
} else {
    set_property -dict [list CONFIG.PSU__PSS_ALT_REF_CLK__ENABLE {0} \
                             CONFIG.PSU__USB0__REF_CLK_SEL {Ref Clk1} \
                             CONFIG.PSU__USB0__REF_CLK_FREQ {100} \
                             CONFIG.PSU__USB1__REF_CLK_SEL {Ref Clk1} \
                             CONFIG.PSU__USB1__REF_CLK_FREQ {100} \
                             CONFIG.PSU__PCIE__REF_CLK_SEL {Ref Clk1}] [get_bd_cells sys_ps8]
}

# processor system reset instances for all the three system clocks

ad_ip_instance proc_sys_reset sys_rstgen
ad_ip_parameter sys_rstgen CONFIG.C_EXT_RST_WIDTH 1
ad_ip_instance proc_sys_reset sys_user_rstgen
ad_ip_parameter sys_user_rstgen CONFIG.C_EXT_RST_WIDTH 1
ad_ip_instance proc_sys_reset sys_500m_rstgen
ad_ip_parameter sys_500m_rstgen CONFIG.C_EXT_RST_WIDTH 1

# system reset/clock definitions

ad_connect  sys_cpu_clk sys_ps8/pl_clk0
ad_connect  sys_user_clk sys_ps8/pl_clk1
ad_connect  sys_500m_clk sys_ps8/pl_clk2

ad_connect  sys_ps8/pl_resetn0 sys_rstgen/ext_reset_in
ad_connect  sys_cpu_clk sys_rstgen/slowest_sync_clk
ad_connect  sys_ps8/pl_resetn0 sys_user_rstgen/ext_reset_in
ad_connect  sys_user_clk sys_user_rstgen/slowest_sync_clk
ad_connect  sys_ps8/pl_resetn0 sys_500m_rstgen/ext_reset_in
ad_connect  sys_500m_clk sys_500m_rstgen/slowest_sync_clk

ad_connect  sys_cpu_reset sys_rstgen/peripheral_reset
ad_connect  sys_cpu_resetn sys_rstgen/peripheral_aresetn
ad_connect  sys_user_reset sys_user_rstgen/peripheral_reset
ad_connect  sys_user_resetn sys_user_rstgen/peripheral_aresetn
ad_connect  sys_500m_reset sys_500m_rstgen/peripheral_reset
ad_connect  sys_500m_resetn sys_500m_rstgen/peripheral_aresetn

# generic system clocks&resets pointers

set  sys_cpu_clk           [get_bd_nets sys_cpu_clk]
set  sys_dma_clk           [get_bd_nets sys_user_clk]
set  sys_iodelay_clk       [get_bd_nets sys_500m_clk]

set  sys_cpu_reset         [get_bd_nets sys_cpu_reset]
set  sys_cpu_resetn        [get_bd_nets sys_cpu_resetn]
set  sys_dma_reset         [get_bd_nets sys_user_reset]
set  sys_dma_resetn        [get_bd_nets sys_user_resetn]
set  sys_iodelay_reset     [get_bd_nets sys_500m_reset]
set  sys_iodelay_resetn    [get_bd_nets sys_500m_resetn]

# gpio

ad_connect  gpio_i sys_ps8/emio_gpio_i
ad_connect  gpio_o sys_ps8/emio_gpio_o
ad_connect  gpio_t sys_ps8/emio_gpio_t

# interrupts

ad_ip_instance xlconcat sys_concat_intc_0
ad_ip_parameter sys_concat_intc_0 CONFIG.NUM_PORTS 8

ad_ip_instance xlconcat sys_concat_intc_1
ad_ip_parameter sys_concat_intc_1 CONFIG.NUM_PORTS 8

ad_connect  sys_concat_intc_0/dout sys_ps8/pl_ps_irq0
ad_connect  sys_concat_intc_1/dout sys_ps8/pl_ps_irq1

ad_connect  sys_concat_intc_1/In7 GND
ad_connect  sys_concat_intc_1/In6 GND
ad_connect  sys_concat_intc_1/In5 GND
ad_connect  sys_concat_intc_1/In4 GND
ad_connect  sys_concat_intc_1/In3 GND
ad_connect  sys_concat_intc_1/In2 GND
ad_connect  sys_concat_intc_1/In1 GND
ad_connect  sys_concat_intc_1/In0 GND
ad_connect  sys_concat_intc_0/In7 GND
ad_connect  sys_concat_intc_0/In6 GND
ad_connect  sys_concat_intc_0/In5 GND
ad_connect  sys_concat_intc_0/In4 GND
ad_connect  sys_concat_intc_0/In3 GND
ad_connect  sys_concat_intc_0/In2 GND
ad_connect  sys_concat_intc_0/In1 GND
ad_connect  sys_concat_intc_0/In0 GND
