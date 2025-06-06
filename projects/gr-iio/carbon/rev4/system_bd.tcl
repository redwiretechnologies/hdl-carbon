# SPDX-License-Identifier: Apache-2.0

set script_dir [file dirname [ file dirname [ file normalize [ info script ]/... ] ] ]

puts $script_dir

source "$script_dir/../../../common/carbon/rev4/carbon_system_bd.tcl"
source "$script_dir/../../scripts/griio_bd.tcl"
source "$script_dir/../../../common/scripts/common_bd.tcl"

ad_ip_parameter axi_ad9361 CONFIG.ADC_INIT_DELAY 11
