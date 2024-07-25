#!/bin/bash

echo "        "Name": "Pump Control"," >> output.txt
sudo docker images --format "{{.Repository}}:{{.Tag}}" | grep hcr.io/nationaloilwellvarco/aacd-datavan-ui-shell | awk -F ':' '{ print "\" Version\": \"v" $2 "\"" }' | grep -v latest >> output.txt
sudo docker images --format "{{.Repository}}:{{.Tag}}" | grep hcr.io/nationaloilwellvarco/aacd-datavan-ui-shell | awk -F ':' '{ print "\"Git Commit/Tag\": \"tag: " $2 "\"" }' | grep -v latest >> output.txt
printf '"Build Date": "%s"\n' "$(date +'%Y-%m-%d')" >> output.txt

==============================================================================================================


