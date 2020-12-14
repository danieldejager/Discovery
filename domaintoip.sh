#!/bin/bash
# Version 0.0.1
# Parameter 1 is the filename to read from and must contain the subdomains that have been discovered
# Parameter 2 is the outputfile that will store the subdomain, ip  via the host command
filename=$1
while read line; do
	host $line >> $2
done < $filename
