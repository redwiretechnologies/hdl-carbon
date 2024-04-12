SUPPORTED_BOARDS := carbon
REVISION := rev4
M_DEPS += ../../../common/carbon/$(REVISION)/carbon_system_constr.xdc
M_DEPS += ../../../common/carbon/$(REVISION)/carbon_system_bd.tcl

M_REPOS += hdl-carbon

include ../../../common/scripts/$(SUPPORTED_BOARDS)/boards.mk
include ../../../common/scripts/te080x/te080x.mk
