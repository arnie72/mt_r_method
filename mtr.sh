#!/bin/sh

while : ; do
code=`php -r "echo mt_rand(1000, 9999);"`
result=`grep ./test.txt -e $code`
echo "$result\c"
if [ "$result" != "" ]; then
    break
fi
done
echo ""
