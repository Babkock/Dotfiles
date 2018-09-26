#!/bin/bash
vol=$(awk '/%/ {gsub(/[\[\]]/,""); print $5}' <(amixer sget Master));
for word in $vol
do
    echo $word
    break
done
exit
