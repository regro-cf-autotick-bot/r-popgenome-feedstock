#!/bin/bash

# Delete mmacosx-version-min from Makeconf
# See https://github.com/conda-forge/r-base-feedstock/issues/350
sed -i 's/-mmacosx-version-min=10.13//' ${PREFIX}/lib/R/etc/Makeconf

export DISABLE_AUTOBREW=1
$R CMD INSTALL --build . ${R_ARGS}
