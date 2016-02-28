#!/bin/bash
open http://ark.intel.com/search?q=$(sysctl -n machdep.cpu.brand_string | awk '{FS=" " ; print $3}')
