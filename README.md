# RemoveN
scaffold transform contig and rename contig name (>file_num).

## Input
RemoveN :dog: only take xxx.fasta file :bowtie: (eg:STEC155.fasta). 
## Usage
```
#Help 
sh RemoveN -h
#Single file
sh RemoveN -i <filename.fasta>
#batch file （must add "\"）
sh RemoveN -i \*.fasta
```
## Outfile
The format of the result file is your filename_contig.fasta :see_no_evil:
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
