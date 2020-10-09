#!/bin/bash -x

if [ "$(ls -A . | grep -v .keep | wc -l)" -ne 0 ]; then
    # not empty
    echo "skip vapid new, directory is not empty"
else
    # directory is empty
    
    shopt -s dotglob #  If set, bash includes filenames beginning with a '.' in the results of pathname expansion
    vapid new tmp-dir && mv tmp-dir/* . && rmdir tmp-dir
fi
