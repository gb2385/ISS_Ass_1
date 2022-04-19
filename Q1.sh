#!/bin/bash
grep "\S" quotes.txt
echo 
awk 'NF && visited[$0]++' quotes.txt