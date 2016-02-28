# Mac Processor Info

This will open [ark.intel.com](http://ark.intel.com) in your default browser with info about your cpu.

## Usage

`./processor-info.sh` in Terminal, or integrate the oneliner in any way you want.

## How does it work?

The script is pretty short: 

```
echo http://ark.intel.com/search?q=$(sysctl -n machdep.cpu.brand_string | awk '{print $3}')
^    ^                               ^                                    ^
|    |                               |                                    |= print only the model
|    |                               |= get the branded cpu model
|    |= the url of search on intel
|= open in default application
```

It's edited from [this](http://superuser.com/a/436989) answer on the superuser stackexchange. That answer searches on Google, my version goes to intel directly.

# License

CC0
