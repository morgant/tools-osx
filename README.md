tools-osx README
================

by Morgan Aldridge <morgant@makkintosshu.com>

OVERVIEW
--------

A small collection of command line tools that I've developed for Mac OS X over the years, à la NextStep/Mac OS X's `open`, `pbcopy`, `pbpaste`, etc. These are mostly `bash` scripts as an exercise in honing my bash-fu, but a number of Perl & Ruby scripts have been submitted by others.

TOOLS
-----

### clipcat

`clipcat` prints and concatenates Mac OS Text Clippings. Submitted by David Kendal <https://gist.github.com/705623>.

### dict

`dict` performs a look-up in Mac OS X's included dictionary. Note: unlike the other scripts provided, this one requires that you have MacRuby installed <http://macruby.org/>. Submitted by David Kendal.

### eject

`eject` ejects a volume or network volume and all other volumes on the same local device. A shorter, simpler, smarter wrapper of `diskutil`'s various eject/unmount options and allows specifying either a full path in /Volumes or just the volume name.

### ql

`ql` opens files with Mac OS X's [Quick Look](http://www.apple.com/findouthow/mac/#quicklook) feature.

### swuser

`swuser` switches users using Mac OS X's [Fast User Switching](http://docs.info.apple.com/article.html?path=Mac/10.6/en/8672.html) feature. You can either switch out to the login window or to another user. Note: unfortunately, this is not currently compatible with `screen`.

### trash

`trash` allows trashing of files instead of tempting fate with `rm`. Correctly handles trashing files on other volumes, uses the same filename renaming scheme as Finder for duplicate file names, can list trash contents w/disk usage summary, and empty trash (including securely) w/confirmation. Does not require Finder to be running.

### with

`with` sets the application with which specified documents will be opened. It can even change and open in one fell swoop. Submitted by David Kendal.

INSTALLATION
------------

1. Download and extract the tools.
2. Run `rake`.
3. Run `sudo rake install`. (If you have write permission on `/usr/local/bin`, you don't need to `sudo`.)

OTHER TOOLS
-----------

Looking for other Mac OS X-specific command line tools to complement these? Check out the following:

* [`appswitch` & `launch`](http://sabi.net/nriley/software/) by Nicholas Riley
* [`asprint`](http://hasseg.org/asprint/), [`icalBuddy`](http://hasseg.org/icalBuddy/), [`setWeblocThumb`](http://hasseg.org/setWeblocThumb/), and [`trash`](http://hasseg.org/trash/) by Ali Rantakari
* [`iloc`](http://derailer.org/iloc/) by Nate Weaver
* [`ithief`](http://cachivaches.chauca.net/ithief/) by Israel Chauca Fuentes
* [osxiconutils (`geticon`, `icns2pict`, `pict2icns`, `seticon`)](http://sveinbjorn.org/osxiconutils) & [osxutils (`cpath`, `getfcomment`, `geticon`, `google`, `hfsdata`, `lsmac`, `mkalias`, `rcmac`, `setfcomment`, `setfctypes`, `setfflags`, `seticon`, `setlabel`, `setsuffix`, `setvolume`, `trash`, `wiki`, `wsupdate`)](http://sveinbjorn.org/osxutils) by Sveinbjorn Thordarson
* [`pngpaste`](https://github.com/jcsalterego/pngpaste) by Jerry Chen
* [`rem`](https://github.com/kykim/rem) by Kevin Y. Kim
* [`service`](https://github.com/dpkendal/service) by David Kendal
* [`trash`](http://www.dribin.org/dave/osx-trash/) by Dave Dribin
* [`webkit2png`](http://www.paulhammond.org/webkit2png/) by Paul Hammond

SPECIAL THANKS
--------------

Special thanks to: David Kendal for all his submissions and collaboration; Matt Brictson for his initial relative path bug fix in `trash`; huyz for the improved determination of Finder's PID to prevent possible false-positives in `trash`.
