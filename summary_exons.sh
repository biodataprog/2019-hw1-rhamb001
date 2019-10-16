#!/usr/bin/bash
# your code goes next
countexon=0 # set starting variable to 0
curl -o rice.bed https://raw.githubusercontent.com/biodataprog/GEN220/master/data/rice_random_exons.bed #save file as rice.bed
exondiff=$(awk '{print $3-$2}' rice.bed) #subtract column 2 from 3 to get all exon lengths and save this data as exondiff
for num in ${exondiff[@]} #for loop read all lines and add into one variable
do
countexon=$(( $num +  $countexon ))
done
echo The total length of the exons is: $countexon
