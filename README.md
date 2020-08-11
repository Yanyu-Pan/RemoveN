# RemoveN
scaffold transform contig and rename contig name (>file_num).

## Input
RemoveN only take xxx.fasta file (eg:STEC155.fasta). 
## Usage
```
#Single file
sh Remove -i <filename>
#batch file （must add "\"）
sh RemoveN -i \*.fasta
```
## Outfile
The format of the result file is your filename_contig.fasta
For example
```
#Input file:ST666.fasta
>Scaffold1
aaaattttNaaagggg
>Scafold
tttaaggNNnaaattnnnnn
ttta
#Outfile:ST666_contig.fasta
>ST666_1
aaaatttt
>ST666_2
aaagggg
>ST666_3
tttaagg
>ST666_4
aaatt
>ST666_5
ttta
```
