#!/bin/sh

d=$DIRPAPERS/html
listtex=$DIRPAPERS/list-tex
curdir=`pwd`


#list="p-mc p-vcloud p-limp s-cloudos p-jira s-ssd p-tail"
list="p-scale"

# run single file 
cd $listtex
if [ "x$1" != "x" ]; then
    ./all.sh $1
    cd $curdir
    cp -v $d/$1.html .
    svnc $1
    cd ..
    ./refresh-stage-dir.sh
    exit
fi    



# run all.sh on all
for ll in $list
do
    ./all.sh $ll
done
    
# now copy all the html
cd $curdir
for l in $list
do
    cp -v $d/$l.html .
done

# go up one and upload
svnc readings
cd ..
./refresh-stage-dir.sh



