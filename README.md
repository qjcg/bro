# Bro

Ever wanted a quick overview of man page contents?

Bro, I got you!


## Usage

bro is just a simple wrapper for the man command, so just
use it with the arguments you would pass to man.

```sh
$ bro man
NAME
SYNOPSIS
DESCRIPTION
EXAMPLES
OVERVIEW
DEFAULTS
OPTIONS
   General options
   Main modes of operation
   Finding manual pages
   Controlling formatted output
   Getting help
EXIT STATUS
ENVIRONMENT
FILES
SEE ALSO
HISTORY

$ bro 7 man
NAME
SYNOPSIS
DESCRIPTION
   Title line
   Sections
   Fonts
   Other macros and strings
   Normal paragraphs
   Relative margin indent
   Indented paragraph macros
   Hypertext link macros
   Miscellaneous macros
   Predefined strings
   Safe subset
FILES
NOTES
BUGS
SEE ALSO
COLOPHON
```
