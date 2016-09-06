#!/bin/bash

set -euf -o pipefail

# this is run from within a source code directory so path references will
# reflect that

mvn $CMD

