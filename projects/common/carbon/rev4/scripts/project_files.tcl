# SPDX-License-Identifier: Apache-2.0

lappend project_files \
  "$script_dir/../../../common/carbon/rev4/carbon_system_constr.xdc"

if {[info exists NO_ADI9361] != 0} {
    lappend project_files \
      "$script_dir/../../../common/shared/$supported_boards/rev4/$som_format/fake_ad9361_constr.xdc" \
      "$script_dir/../../../common/shared/$supported_boards/rev4/$som_format/fake_second_ad9361_constr.xdc"
} else {
    lappend project_files \
      "$script_dir/../../../common/shared/$supported_boards/rev4/$som_format/ad9361_constr.xdc"
    if {[info exists DUAL_ADI9361] !=0} {
        lappend project_files \
          "$script_dir/../../../common/shared/$supported_boards/rev4/$som_format/second_ad9361_constr.xdc"
    } else {
        lappend project_files \
          "$script_dir/../../../common/shared/$supported_boards/rev4/$som_format/fake_second_ad9361_constr.xdc"
    }
}
