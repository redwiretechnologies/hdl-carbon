# SPDX-License-Identifier: Apache-2.0

if {$som_format=="te0803"} {
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
