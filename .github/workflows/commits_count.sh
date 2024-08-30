#!/bin/bash
commits=$(echo "$1")
length=0
for commit in $(echo "$commits" | jq -r '.[]'); do
    length=$((length + 1))
done

echo $length
