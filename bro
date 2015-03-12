#!/usr/bin/env bash
# Print the table of contents for a man page. Dude!
man "$@" | awk 'NR != 1 && /^[A-Z]+/ || /^ {3}[A-Z]/'
