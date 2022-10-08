#!/bin/bash
set -ex
export DISABLE_AUTOBREW=1

# shellcheck disable=SC2086
if [[ "$CONDA_BUILD_STATE" != "TEST" && "$build_platform" != "$target_platform" ]]; then
  mv $PREFIX/lib/R/bin/Rscript $PREFIX/lib/R/bin/Rscript.bak
  ln -s $BUILD_PREFIX/lib/R/bin/Rscript $PREFIX/lib/R/bin/Rscript
fi
${R} CMD INSTALL --build . ${R_ARGS}
