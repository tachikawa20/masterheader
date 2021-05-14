# masterheader
A Ruby library that allows the creation of simple "about" sections for a script or program.

## Instalation
> gem build masterheader.gemspec
> sudo gem install ./masterheader-0.0.1.gem

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
require "masterheader"
 
PROJECTNAME = "Ruby test program"
FILENAME    = "test.rb"
AUTHOR      = "John Smith"
LICENSE     = "GNU GPLv3"
DATE        = "2021/05/14"

RES0        = "Organization"
ORG         = "Apple Company 123"
RES1        = "Phone Number"
PNUM        = "123-123-1234"
RES2        = "Email"
EMAIL       = "john@banana.com"
infoheader = [PROJECTNAME, FILENAME, AUTHOR, LICENSE, DATE, true, RES0, ORG, RES1, PNUM, RES2, EMAIL]
Mhead.header(infoheader)
```
