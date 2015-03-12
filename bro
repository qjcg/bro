#!/usr/bin/env sh
# Print the table of contents for a man page. Dude!
man "$@" | awk 'NR != 1 && /^ {3}?[A-Z][a-zA-Z ]+$/'
