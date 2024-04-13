#!/bin/bash

websites=("https://google.com" "https://facebook.com" "https://twitter.com")

log_file="website_status.log"

> $log_file

for website in "${websites[@]}"; do
    http_status=$(curl -Is $website | head -n 1 | cut -d ' ' -f 2)

    if [ "$http_status" == "200" ]; then
        echo "$website is UP" >> $log_file
    else
        echo "$website is DOWN, status code: $http_status" >> $log_file
    fi
done

echo "Результати записано у файл логів: $log_file"
