#!/bin/sh

git push
git status

echo "  Refreshing"
ssh -A linux2.cs.uchicago.edu \
	'cd /stage/ucare/html ; git pull ; sh change-permission.sh' >/tmp/change-permission.txt
echo ""
cat /tmp/change-permission.txt
echo "  "
wc -l /tmp/change-permission.txt
echo "  "
echo "  Refreshed ..."
echo "  (If not, have you run git push?) ...."
echo ""
