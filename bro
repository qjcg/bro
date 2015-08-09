#!/usr/bin/env bash
# Print the table of contents for a man page. Dude!

RE_HEADING='^ {3}?[A-Z]'
RE_FIRST_OR_LAST=' {4}'

usage() {
	local _cmd=$(basename $0)

	cat <<- END
	$_cmd usage

	$_cmd wraps the man command to print relevant info.
	END
}

# Get Table Of Contents for a man page
get_toc() {
	man "$@" | awk "/${RE_HEADING}/ && !/${RE_FIRST_OR_LAST}/"
}

# Get section contents.
# for awk logic, see http://stackoverflow.com/a/17988835
get_section() {
	# ex: bro 5 passwd NAME
	# section: 5 
	# page: passwd
	# heading: NAME
	local section page heading

	case $1 in
	[0-9]*)
		section=$1
		page=$2
		heading=$3
		;;
	*)
		page=$1
		heading=$2
		;;
	esac

	man $section $page | awk "/${RE_HEADING/\[A-Z\]/${heading:-[A-Z]}}/ {flag=1; next} /${RE_HEADING}/ {flag=0} flag"
}

[[ "$1" =~ -h|-{0,2}help ]] && usage && exit

case $# in
2|3) get_section "$@" ;;
*) get_toc "$@" ;;
esac
