tools-osx README
================

by Morgan Aldridge <morgant@makkintosshu.com>

[![tools-osx on OpenHub](https://www.openhub.net/p/tools-osx/widgets/project_thin_badge.gif)](https://www.openhub.net/p/tools-osx) [![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=DBY3R8ARLDELE&currency_code=USD&source=url)

OVERVIEW
--------

A small collection of Mac OS X command line tools that I’ve developed over the years. Similar to the NextStep and Mac OS X commands `open`, `pbcopy`, and `pbpaste`, most of these tools are `bash` scripts created as an exercise to hone my bash-fu. There are also a number of Perl and Ruby scripts submitted by others.

TOOLS
-----

### clipcat

`clipcat` prints and concatenates Mac OS text clippings. Submitted by Daphne Preston-Kendal.

### dict

`dict` performs a look-up in the Mac OS X dictionary. Note: unlike the other scripts provided, this one requires that you have [MacRuby](http://macruby.org/) installed. Submitted by Daphne Preston-Kendal.

### eject

`eject` ejects a volume or network volume and all other volumes on the same local device. A shorter, simpler, smarter wrapper of `diskutil`’s various eject/unmount options and allows specifying either a full path in `/Volumes` or just the volume name.

### launch

`launch` searches for and launches applications. It's a slightly smarter wrapper for `open -a` with wildcard matching via Spotlight, if available, or `find`.

### ql

`ql` opens files with the Mac OS X [Quick Look](https://support.apple.com/en-ca/guide/mac-help/mh14119/mac) feature.

### swuser

`swuser` switches users using the Mac OS X [Fast User Switching](https://support.apple.com/en-ca/guide/mac-help/mchlp2439/mac) feature. You can either switch out to the login window or to another user. Note: unfortunately, this is not currently compatible with `screen`.

### trash

`trash` allows trashing of files instead of tempting fate with `rm`. Correctly handles trashing files on other volumes, uses the same filename renaming scheme as Finder for duplicate file names, can list trash contents w/disk usage summary, and empty trash (including securely) w/confirmation. Does not require Finder to be running.

### with

`with` sets the application with which specified documents will be opened. It can even change and open in one fell swoop. Submitted by Daphne Preston-Kendal.

INSTALLATION
------------

### Installing from Source

Installing all tools:

1. Clone this repository or download and extract the tools.
2. Run `rake`.
3. Run `rake install`. (If you don't have write permission on `/usr/local/bin`, you'll need to prepend `sudo`.)

Installing one or more specific tools:

1. Clone this repository or download and extract the tools.
2. Run `rake`
3. Run `rake 'install[ql,trash]'`, specifying individual tools in a comma separated list between the square brackets. (If you don't have write permission on `/usr/local/bin`, you'll need to prepend `sudo`.)

### Installing Using a `zsh` Plugin Manager

_Note: You cannot install `clipcat`, `dict`, or `with` using this method._

macOS 10.15 Catalina and newer now use `zsh` as the default shell. If you're using a `zsh` plugin manager, you can install individual tools as follows and they'll be automatically downloaded, installed, and kept up-to-date:

* Using [zinit](https://github.com/zdharma/zinit): Add the following to your `~/.zshrc` file for each tool you wish to install, `trash`, for example:

```shell
zinit wait'1' lucid light-mode as"program" pick"src/trash" for morgant/tools-osx
```

OTHER TOOLS
-----------

Looking for other Mac OS X-specific command line tools to complement these? Check out the following:

* [`appswitch`](http://sabi.net/nriley/software/#appswitch) and [`launch`](http://sabi.net/nriley/software/#launch) by Nicholas Riley
* [`asprint`](http://hasseg.org/asprint/), [`icalBuddy`](http://hasseg.org/icalBuddy/), [`setWeblocThumb`](http://hasseg.org/setWeblocThumb/), and [`trash`](http://hasseg.org/trash/) by Ali Rantakari
* [`contacts`](https://web.archive.org/web/20160319061131/http://www.gnufoo.org/contacts/) by Shane Celis
* [`dark-mode`](https://github.com/sindresorhus/dark-mode) by Sindre Sorhus
* [`dockutil`](https://github.com/kcrawford/dockutil) by Kyle Crawford
* [`duti`](https://github.com/moretension/duti) by Andrew Mortensen
* [`get-location`](https://github.com/lindes/get-location) by David Lindes
* [`iloc`](https://derailer.org/iloc/) by Nate Weaver
* [`imsg`](https://github.com/chrisfsampaio/imsg) by Christian Sampaio
* [`ithief`](https://web.archive.org/web/20120418093332/http://cachivaches.chauca.net/ithief/) by Israel Chauca Fuentes
* [osxiconutils (`geticon`, `icns2pict`, `pict2icns`, `seticon`)](http://sveinbjorn.org/osxiconutils) & [osxutils (`cpath`, `getfcomment`, `geticon`, `google`, `hfsdata`, `lsmac`, `mkalias`, `rcmac`, `setfcomment`, `setfctypes`, `setfflags`, `seticon`, `setlabel`, `setsuffix`, `setvolume`, `trash`, `wiki`, `wsupdate`)](https://web.archive.org/web/20100831125502/http://osxutils.sourceforge.net/) by Sveinbjorn Thordarson
* [`pngpaste`](https://github.com/jcsalterego/pngpaste) by Jerry Chen
* [`rem`](https://github.com/kykim/rem) by Kevin Y. Kim
* [`service`](https://github.com/dpk/service) by Daphne Preston-Kendal
* [`stronghold`](https://github.com/alichtman/stronghold) and [`shallow-backup`](https://github.com/alichtman/shallow-backup) by Aaron Lichtman
* [`tag`](https://github.com/jdberry/tag) by James Berry
* [`trash`](http://www.dribin.org/dave/osx-trash/) by Dave Dribin
* [`trash`](https://github.com/sindresorhus/trash) by Sindre Sorhus
* [`webkit2png`](http://www.paulhammond.org/webkit2png/) by Paul Hammond

SPECIAL THANKS
--------------

Special thanks to: [Daphne Preston-Kendal](http://dpk.io/) for all her submissions and collaboration; [Matt Brictson](https://mattbrictson.com) for his initial relative path bug fix in `trash`; huyz for the improved determination of Finder’s PID to prevent possible false-positives in `trash`.
