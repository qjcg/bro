#!/usr/bin/env sh
# Print the table of contents for a man page. Dude!
man "$@" | awk 'NR != 1 && !/ {4}/ && /^ {3}?[A-Z]/'
