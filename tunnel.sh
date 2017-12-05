#! /bin/bash

# Tunnel to .CMS network database

ssh -t btran@lxplus.cern.ch \
    ssh \
        -v -4 \
        -L 10131:cmsrac11-v:10121 \
        -L 10132:cmsrac11-v:10121 \
        -L 10133:cmsrac11-v:10121 \
        -L 10134:cmsrac11-v:10121 \
        -L 5555:localhost:1085 \
        -ND 1085 \
        btran@cmsusr
