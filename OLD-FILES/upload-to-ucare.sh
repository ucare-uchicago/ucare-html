#!/bin/sh

echo "DEPRECATED"

exit

clall --silent

cd ..

srcdir="ucare-html"
dstdir="uc:ucare/html"


if [ $# == 0 ]; then
    rsync -av --delete --dry-run $srcdir/ $dstdir
    msg="DRY RUN ONLY"
else 
    rsync -av --delete $srcdir/ $dstdir
    msg="SYNC WITH DELETE"

    ssh uc 'cd ucare/html ; ./change-permission.sh' > /tmp/change-permission.txt
    echo ""
    wc -l /tmp/change-permission.txt
fi






echo ""
echo "  local ----> ucare "
echo ""
echo " $msg"
echo ""

