#!/bin/bash
# call this with one argument: id number of root confluence page
if [[ $# -ne 1 ]]; then
	echo "Wrong number of parameters"
	echo "usage: ./run.sh <page-id>"
	exit 1
fi
java -jar target/confluence2md-fat.jar Confluence2MD -server https://estl.moe/confluence -u cflee:daltiousabkinka -o out.md +H false +T false $1

