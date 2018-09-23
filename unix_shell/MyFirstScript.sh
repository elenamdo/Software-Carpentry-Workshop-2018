#!/bin/bash
#usage: MyFirstScript.sh
#Takes gapminder and finds country with highest life expectancy in 2002

input=$1
year=$2


grep $year $input | cut -f1,3,4 | sort -k3 | tail -1 > Country_HighestLifeExp.txt
