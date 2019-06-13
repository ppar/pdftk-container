#!/bin/bash
#
# Convenience wrapper to run the pdftk container with your
# hosts's current directory mounted to the container's working
# directory (/data)
#
# For example:
# $ pdftk.sh --help
# $ pdftk.sh DOC130619-1.pdf burst
#

docker run -v "$(pwd):/data:" pdftk $@

