#!/bin/bash
list=`pacman -Sup 2> /dev/null`

if [ "$list" == "" ]; then
    count=0
else
    count=`echo "$list" | wc -l`
fi

for pkg in $list; do
    echo -n "  "
    echo $pkg | sed -e 's#.*/##g' -e 's%(.*).pkg.*$%1%'
done

echo "$count"