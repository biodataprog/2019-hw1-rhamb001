#!/usr/bin/bash
# your script goes below here
curl -o blast.gz ftp://ftp.ncbi.nih.gov//blast/db/FASTA/vector.gz #open the file and save under name blast.gz
gunzip blast.gz #unzip the file, it is now just named blast
echo The number of FASTA format sequences in this file is: $(grep -c ">" blast) #count the number of times ">" symbol is in file
