#!/bin/bash

set -euf -o pipefail

VERSION=$(cat version/number)

cd code
mvn versions:set -DnewVersion=${VERSION}
mvn deploy

