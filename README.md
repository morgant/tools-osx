tools-osx README
================

by Morgan Aldridge <morgant@makkintosshu.com>

OVERVIEW
--------

A small collection of command line tools that I've developed for Mac OS X over the years, à la NextStep/Mac OS X's `open`, `pbcopy`, `pbpaste`, etc. These are mostly `bash` scripts as an exercise in honing my bash-fu.

TOOLS
-----

### eject

`eject` ejects a volume and all other volumes on the same disk. A simpler, shorter wrapper of `diskutil`'s various eject/unmount options and allows specifying either a full path in /Volumes or just the volume name.

### trash

`trash` allows trashing of files instead of tempting fate with `rm`. Correctly handles trashing files on other volumes.
