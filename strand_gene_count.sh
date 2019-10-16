#!/usr/bin/bash
# your code goes after this 
curl -o data.gff https://fungidb.org/common/downloads/Current_Release/ScerevisiaeS288c/gff/data/FungiDB-45_Scere$ #get file and save as data.gff
grep "gene" data.gff > genedata #sort out rows that say gene, save as new file called genedata
echo The number of genes on the positive strand is: $(grep -c "+" genedata) #count occurences of +
echo The number of genes on the negative strand is: $(grep -v -c "+" genedata) #count all occurences that aren't plus (works b/c only options are + or -)
