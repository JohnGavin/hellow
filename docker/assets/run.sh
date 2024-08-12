#!/bin/bash

# https://blog.stephenturner.us/p/r-package-development-in-positron

# get translation language from first arg: default is french
TOLANG="${1:-:fr}"
HELLO=$(Rscript /pre.R)

trans "$HELLO" "$TOLANG"
