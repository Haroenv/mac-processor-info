#!/bin/bash
open http://ark.intel.com/search?q=$(sysctl -n machdep.cpu.brand_string | awk '{print $3}')
