#!/bin/sh


svn up
svn st

echo "  Refreshing"
ssh linux2.cs.uchicago.edu \
   'cd /stage/ucare/html ; svn up ; sh change-permission.sh' > /tmp/change-permission.txt
echo ""
cat /tmp/change-permission.txt
echo "  "
wc -l /tmp/change-permission.txt
echo "  "
echo "  Refreshed ..."
echo "  (If not, have you run svnc?) ...."
echo ""


