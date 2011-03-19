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

`eject` ejects a volume and all other volumes on the same disk. A simpler, shorter wrapper of `diskutil`'s various eject/unmount options and allows specifying either a full path in /Volumes or just the volume name.

### swuser

`swuser` switches users using Mac OS X's Fast User Switching feature. You can either switch out to the login window or to another user. Note: unfortunately, this is not currently compatible with `screen`.

### trash

`trash` allows trashing of files instead of tempting fate with `rm`. Correctly handles trashing files on other volumes, can list trash contents w/disk usage summary, and empty trash w/confirmation.

INSTALLATION
------------

I'd suggest installing these tools in `/usr/local/bin/` as follows:

1. `cd` into the directory containing the aforementioned tools.
2. Run `sudo mkdir -p /usr/local/bin/` to make the `/usr/local/bin/` directory, if it doesn't already exist.
3. Run `sudo install -b clipcat eject swuser trash /usr/local/bin/` to install the `clipcat`, `eject`, `swuser` and `trash` tools into `/usr/local/bin/` (Note: if you do not want to install all of the tools, only list the ones you want to install).
4. Make sure to add `/usr/local/bin/` to your path. If you're using the default `bash` shell, create and/or edit `~/.bash_profile` and add the following line: `export PATH=$PATH:/usr/local/bin`

