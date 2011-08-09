tools-osx README
================

by Morgan Aldridge <morgant@makkintosshu.com>

OVERVIEW
--------

A small collection of command line tools that I've developed for Mac OS X over the years, à la NextStep/Mac OS X's `open`, `pbcopy`, `pbpaste`, etc. These are mostly `bash` scripts as an exercise in honing my bash-fu.

TOOLS
-----

### clipcat

`clipcat` prints and concatenates Mac OS Text Clippings. Submitted by David Kendal <https://gist.github.com/705623>.

### dict

`dict` performs a look-up in Mac OS X's included dictionary. Note: unlike the other scripts provided, this one requires that you have MacRuby installed <http://macruby.org/>. 

### eject

`eject` ejects a volume or network volume and all other volumes on the same local device. A shorter, simpler, smarter wrapper of `diskutil`'s various eject/unmount options and allows specifying either a full path in /Volumes or just the volume name.

### swuser

`swuser` switches users using Mac OS X's Fast User Switching feature. You can either switch out to the login window or to another user. Note: unfortunately, this is not currently compatible with `screen`.

### trash

`trash` allows trashing of files instead of tempting fate with `rm`. Correctly handles trashing files on other volumes, uses the same filename renaming scheme as Finder for duplicate file names, can list trash contents w/disk usage summary, and empty trash (including securely) w/confirmation. Does not require Finder to be running.

### with

`with` sets the application with which specified documents will be opened. It can even change and open in one fell swoop. Submitted by David Kendal.

INSTALLATION
------------

1. Download and extract the tools.
2. Run `rake install` -- this will require you to be an administrator.

OTHER TOOLS
-----------

Looking for other Mac OS X-specific command line tools to complement these? Check out the following:

* [`appswitch` & `launch`](http://sabi.net/nriley/software/) by Nicholas Riley
* [`asprint`](http://hasseg.org/asprint/), [`icalBuddy`](http://hasseg.org/icalBuddy/), [`setWeblocThumb`](http://hasseg.org/setWeblocThumb/), and [`trash`](http://hasseg.org/trash/) by Ali Rantakari
* [`iloc`](http://derailer.org/iloc/) by Nate Weaver
