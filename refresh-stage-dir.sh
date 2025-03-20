#!/bin/sh

# git push
git status

echo "  Refreshing"


# ssh -A linux2.cs.uchicago.edu \
#     'git config --global --add safe.directory /stage/ucare/html'

# ssh -o StrictHostKeyChecking=no -A linux2.cs.uchicago.edu \
# 	'cd /stage/ucare/html ; GIT_SSH_COMMAND="ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no" git pull ; sh change-permission.sh' >/tmp/change-permission.txt

rsync -Parv --exclude ".git" ./* linux2.cs.uchicago.edu:/stage/ucare/html
ssh -o StrictHostKeyChecking=no -A linux2.cs.uchicago.edu 'cd /stage/ucare/html ; sh change-permission.sh' >/tmp/change-permission.txt
echo ""
cat /tmp/change-permission.txt
echo "  "
wc -l /tmp/change-permission.txt
echo "  "
echo "  Refreshed ..."
echo "  (If not, have you run git push?) ...."
echo ""
