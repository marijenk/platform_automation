#!/bin/bash

set -x

ISO_PATH=$(find isolation-segments-file -name '*.pivotal')

replicator \
   -name $ISO_SEGNAME \
   -path $ISO_PATH \
   -output $ISO_OUTPUT

mv $ISO_OUTPUT iso-segment-output
