#!/bin/sh

#
# FUSS - Fast User Switching Suspend
#
# A shell script to invoke Fast User Switching (whether it's turned on or not)
# on a regular basis (primarily to make sure that a Mac OS X server running GUI
# software requiring a user to be logged into the console is more secure).
#
# [via Schoun Reagan <sr@afp548.com>]
# 
# See also (found after-the-fact):
#  http://www.macosxhints.com/article.php?story=20031102031045417
#
# VERSION HISTORY
#
# v0.1		2006/10/18		Morgan Aldridge <morgant@makkintosshu.com>
#			Initial release
#

/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend
