#!/bin/bash

PHOTOBOOTH_SERVER='http://192.168.0.1:8000'
IMAGE_PATH='/tmp/selphy.jpg'

#lockdir=/tmp/photobooth_print.lock
#tmpfile=`mktemp`
#if mkdir "$lockdir"
#then
#    echo >&2 "$0 : successfully acquired lock"

    # Remove lockdir when the script finishes, or when it receives a signal
#    trap 'rm -rf "$lockdir"' 0    # remove directory when script finishes
#    trap 'rm $tmpfile' 0

 

    #lp -d selphy "$tmpfile" &
    #lpq -P selphy +5
    echo "printing selphy..."
    /usr/bin/selphy "$IMAGE_PATH"
    echo "selphy done."

 #   echo "$0 : Cleaning up."
 #   rm -rf "$lockdir"
 #   echo "$0 : done. Bye."
#else
#    echo >&2 "cannot acquire lock, giving up on $lockdir"
#    exit 0
#fi
