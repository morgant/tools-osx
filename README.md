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

I'd suggest installing these tools in `/usr/local/bin/` as follows:

1. `cd` into the directory containing the aforementioned tools.
2. Run `sudo mkdir -p /usr/local/bin/` to make the `/usr/local/bin/` directory, if it doesn't already exist.
3. Run `sudo install -b clipcat eject swuser trash with /usr/local/bin/` to install the `clipcat`, `eject`, `swuser`, `trash` and `with` tools into `/usr/local/bin/` (Note: if you do not want to install all of the tools, only list the ones you want to install).
4. Make sure to add `/usr/local/bin/` to your path. If you're using the default `bash` shell, create and/or edit `~/.bash_profile` and add the following line: `export PATH=$PATH:/usr/local/bin`

OTHER TOOLS
-----------

Looking for other Mac OS X-specific command line tools to complement these? Check out the following:

* [`appswitch` & `launch`](http://sabi.net/nriley/software/) by Nicholas Riley
* [`asprint`](http://hasseg.org/asprint/), [`icalBuddy`](http://hasseg.org/icalBuddy/), [`setWeblocThumb`](http://hasseg.org/setWeblocThumb/), and [`trash`](http://hasseg.org/trash/) by Ali Rantakari
* [`iloc`](http://derailer.org/iloc/) by Nate Weaver

SPECIAL THANKS
--------------

Special thanks to: David Kendal for all his submissions and collaboration; Matt Brictson for his relative path bug fix in `trash`.