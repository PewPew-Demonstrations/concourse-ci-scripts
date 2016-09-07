#!/bin/bash

set -euf -o pipefail

# this is run from within a source code directory so path references will
# reflect that

if [[ -n "${VERSION}" ]]; then
  mvn versions:set -DnewVersion=${VERSION}
fi

mvn $CMD

