#!/bin/bash

# 
# ql - Trigger Quick Look on the specified file.
# 
# Via http://www.macworld.com/article/131923/2008/02/qlterminal.html
# 
# v0.1   2012-01-07 - Morgan Aldridge <morgant@makkintosshu.com>
#                     Initial version.
# 

# Quick Look requires 10.5.x or higher
if [ $(sw_vers -productVersion | cut -d . -f 2) -lt 5 ]; then
	echo "Quick Look requires Mac OS X 10.5 Leopard or newer."
	exit 1
fi

# print usage instructions (help)
function usage() {
	echo "Usage: ql [options] file"
	echo "  -h		print these usage instructions"
}

# see if any arguments were passed in
if [ $# -gt 0 ]; then
	# see if the user requested help
	if [ "$1" = "-h" ]; then
		shift
		usage
	else
		qlmanage -p "$1" >& /dev/null
	fi
else
	printf "No file was specified to be viewed with Quick Look.\n\n"
	usage
fi
