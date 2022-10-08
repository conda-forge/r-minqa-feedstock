#!/bin/bash

export DISABLE_AUTOBREW=1

# shellcheck disable=SC2086
which Rscript
if [[ "$CONDA_BUILD_STATE" != "TEST" && "$build_platform" != "$target_platform" ]]; then
  export Rscript=$BUILD_PREFIX/bin/Rscript
fi
${R} CMD INSTALL --build . ${R_ARGS}
