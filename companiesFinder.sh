#!/bin/bash
#This program is free software: you can redistribute it and/or modify
#it under the terms of the GNU General Public License as published by
#the Free Software Foundation, either version 3 of the License, or
#(at your option) any later version.

#This program is distributed in the hope that it will be useful,
#but WITHOUT ANY WARRANTY; without even the implied warranty of
#MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#GNU General Public License for more details.

#You should have received a copy of the GNU General Public License
#along with this program.  If not, see <https://www.gnu.org/licenses/>.

#Description: this bash script read each line from a text file (first argument) 
#and then change the space for '%20' in order to
#find the page of the company in linkedin and download it.
#NOTE: If the company does not exist, then no file will be downloaded
input=$1
while IFS= read -r line
do
  #trim the variable of leading spaces
  myVar=`echo $line | sed 's/ *$//g'`
  #echo "$myVar"
  myVar3=`echo $myVar | awk '{gsub(" ","%20"); print}'`
  textual="wget --progress=bar https://www.linkedin.com/jobs/search/?keywords="
  bar=$textual$myVar3
  echo "processing: $bar"
  $bar
   #example to process: wget --progress=bar https://www.linkedin.com/jobs/search/?keywords=Corden%20BioChem%20GmbH
done < "$input"
echo "end of execution"

