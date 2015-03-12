#!/usr/bin/env sh
# Print the table of contents for a man page. Dude!

# second awk regex excludes first and last lines
man "$@" | awk '/^ {3}?[A-Z]/ && !/ {4}/'
