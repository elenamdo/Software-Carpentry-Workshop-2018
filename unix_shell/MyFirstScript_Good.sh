#!/bin/bash


compareindex=$1
year=$2
outputfilename=$3

cut -f1,3,$compareindex Data/gapminder.txt | grep $year | sort -n -k3 > $outputfilename
