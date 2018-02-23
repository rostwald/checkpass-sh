#!/bin/sh

[ $# -eq 0 ] && password=`cat -` || password=$1

curl -sG https://api.pwnedpasswords.com/range/{`sha1 -qs "$password" | cut -c 1-5`} | grep -i `sha1 -qs "$password" | cut -c 6-` | cut -d':' -f2
