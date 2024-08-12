SUPPORTED_BOARDS := carbon-carp
REVISION := rev4.1
M_DEPS += ../../../common/carbon-carp/$(REVISION)/carbon-carp_system_constr.xdc
M_DEPS += ../../../common/carbon-carp/$(REVISION)/carbon-carp_system_bd.tcl
M_CUSTOM_LIBS += line_matrix

M_REPOS += hdl-carbon

include ../../../common/scripts/$(SUPPORTED_BOARDS)/boards.mk
include ../../../common/scripts/te080x/te080x.mk
