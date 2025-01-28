# SPDX-License-Identifier: Apache-2.0

from . import te080x_soms
from . import oot_builds

carbon_carp_dict = {  "carbon-carp"   : {
                                         "revisions" : ["rev4.2"],
                                         "images"    : ["blank", "default", "gr-iio"],
                                         "boards"    : ["3eg", "4ev", "9eg", "15eg"],
                                         "som_rev"   : te080x_soms.te080x_som_revisions,
                                      }
                   }

oot_builds.merge(oot_builds.supported_oot, carbon_carp_dict)
