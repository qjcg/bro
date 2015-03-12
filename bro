#!/usr/bin/env sh
# Print the table of contents for a man page. Dude!

# first two awk expressions exclude first and last line of man page
man "$@" | awk 'NR != 1 && !/ {4}/ && /^ {3}?[A-Z]/'
