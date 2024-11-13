# SPDX-License-Identifier: Apache-2.0

ALL_BOARDS   := 2cg 2eg 3cg 3eg 4cg 4ev 5ev 6eg 9eg 15eg
ALL_REVS     := 1.0 2.0 3.0 4.0 5.0 6.0

M_DEPS += $(wildcard ../../../common/shared/carbon/$(REVISION)/**/*.xdc)
