set script_dir [file dirname [ file dirname [ file normalize [ info script ]/... ] ] ]

puts $script_dir

source "$script_dir/../../../common/carbon-carp/rev4.2/carbon-carp_system_bd.tcl"
source "$script_dir/../../scripts/blank_bd.tcl"
