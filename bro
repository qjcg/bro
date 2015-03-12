#!/usr/bin/env sh
# Print the table of contents for a man page. Dude!

# last awk expression excludes final line
man "$@" | tail -n +2 | awk '/^ {3}?[A-Z]/ && !/ {4}/'
