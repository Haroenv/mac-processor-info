# Mac Processor Info

This will open [ark.intel.com](http://ark.intel.com) in your default browser with info about your cpu.

## Usage

`./processor-info.sh` in Terminal, or integrate the oneliner in any way you want.

## How does it work?

The script is pretty short: 

```
open http://ark.intel.com/search?q=$(sysctl -n machdep.cpu.brand_string | awk '{print $3}')
↑    ↑                               ↑                                    ↑
|    |                               |                                    └ print only the model
|    |                               └ get the branded cpu model
|    └ the url of search on intel
└ open in default application
```

For example my processor will output <http://ark.intel.com/search?q=i5-5287U>, which gets redirected to the full page (<http://ark.intel.com/products/84988/Intel-Core-i5-5287U-Processor-3M-Cache-up-to-3_30-GHz?q=i5-5287U>)

It's edited from [this](http://superuser.com/a/436989) answer on the superuser stackexchange. That answer searches on Google, my version goes to intel directly.

# License

CC0
