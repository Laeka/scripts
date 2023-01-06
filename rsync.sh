#!/bin/bash
budir="/home/laekagg/Dropbox/laeka-laptop"

if [ -d "$budir"/books ]; then rm -Rf "$budir"/books; fi
rsync -avP --delete /home/laekagg/books "$budir"

if [ -d "$budir"/pics ]; then rm -Rf "$budir"/pics; fi
rsync -avP --delete /home/laekagg/pics "$budir"

if [ -d "$budir"/certs ]; then rm -Rf "$budir"/certs; fi
rsync -avP --delete /home/laekagg/certs "$budir"

if [ -d "$budir"/PROG ]; then rm -Rf "$budir"/PROG; fi
rsync -avP --delete /home/laekagg/PROG "$budir"

notify-send -h string:fgcolor:#ff4444 "back up running"
