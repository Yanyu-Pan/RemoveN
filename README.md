# RemoveN
scaffold transform contig and rename contig (>file_num).

:warning: It need ***[usearch](https://www.drive5.com/usearch/)*** to be installed (may need to modify the ***usearch*** name of line 40 in ***RemoveN***code).
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
>Scaffold2
tttaaggNNnaaattnnnnn
ttta
#Out file:ST666_contig.fasta
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
