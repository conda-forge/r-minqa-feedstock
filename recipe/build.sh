#!/bin/bash

export DISABLE_AUTOBREW=1

# shellcheck disable=SC2086
which -a Rscript
${R} CMD INSTALL --build . ${R_ARGS}
