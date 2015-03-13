#!/usr/bin/env sh
# Print the table of contents for a man page. Dude!

# for awk logic, see http://stackoverflow.com/a/17988834
get_section() {
	case $# in
	3)
		section="$1"
		page="$2"
		heading="$3"
		man "$section" "$page" | awk '/^ {3}?'"$heading"'/ {flag=1; next} /^ {3}?[A-Z]/ {flag=0} flag'
		;;
	2)
		page="$1"
		heading="$2"
		man "$page" | awk '/^ {3}?'"$heading"'/ {flag=1; next} /^ {3}?[A-Z]/ {flag=0} flag'
		;;
	*) echo 'Me no understand!' ;;
	esac
}

case $# in
3) get_section $1 $2 $3 ;;
2) get_section $1 $2 ;;
*)
	# second awk regex excludes first and last lines
	man "$@" | awk '/^ {3}?[A-Z]/ && !/ {4}/'
	;;
esac
