# masterheader
A Ruby library that allows the creation of simple "about" sections for a script or program.

## Why using it?
It a fancy way to show important data. Why not?
It's not a complicated library...

## Instalation
```
gem build masterheader.gemspec
```
```
sudo gem install ./masterheader-0.0.1.gem
```

## How to use it
```
require "masterheader"
 
PROJECTNAME = "Ruby test program"
FILENAME    = "test.rb"
AUTHOR      = "John Smith"
LICENSE     = "GNU GPLv3"
DATE        = "2021/05/14"

infoheader = [PROJECTNAME, FILENAME, AUTHOR, LICENSE, DATE, false]
Mhead.header(infoheader)
```

or, for more arguments than the fixed ones that must appear by default,

```
#Reserved variables correspond to those on the left side of the created table. The maximum size is 16 characters to avoid ugliness.
#Following variables correspond to those on the right side

require "masterheader"
 
PROJECTNAME = "Ruby test program"
FILENAME    = "test.rb"
AUTHOR      = "John Smith"
LICENSE     = "GNU GPLv3"
DATE        = "2021/05/14"

RES0        = "Organization"           #RES0 for "Reserved 0"
ORG         = "Apple Company 123"
RES1        = "Phone Number"           #RES1 for "Reserved 1"
PNUM        = "123-123-1234"
RES2        = "Email"                  
EMAIL       = "john@banana.com"

infoheader = [PROJECTNAME, FILENAME, AUTHOR, LICENSE, DATE, true, RES0, ORG, RES1, PNUM, RES2, EMAIL]
Mhead.header(infoheader)
```

## Arguments of header(info, flag="noskip", fnum=nil)
There are currently 5 different arguments in flag: 
- **noskip** Chosen by default. Shows the "about" screen for 3 seconds.
- **onboot** Displays information that is relevant for when the "about" screen is called at the beginning.
- **glance** If fnum is defined in the function as its third argument, the dialog is dismissed after *fnum* seconds. Otherwise, it will wait 30 seconds.
- **requirekey** Press any key to continue...
- **verbose** Verbose for debug purposes.

*fnum* represents an integer that could be used as a numeric constant to match with a *flag* argument.

### Simple usage of the arguments
```
Mhead.header(infoheader, "noskip requirekey")
```
or
```
Mhead.header(infoheader, "glance", 45) # Waits for 45 seconds
```
