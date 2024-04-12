set script_dir [file dirname [ file dirname [ file normalize [ info script ]/... ] ] ]

puts $script_dir

source "$script_dir/../../../common/carbon/rev4/carbon_system_bd.tcl"
source "$script_dir/../../scripts/blank_bd.tcl"
