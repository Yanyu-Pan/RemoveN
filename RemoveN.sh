#!/bin/bash
printUsage(){
        echo "RemoveN.sh v1.0 : scaffold transform contig and rename contig name(>file_num).
        Author:YanyuPan
	usage: RemoveN.sh -i <filename.fasta>
	eg: RemoveN -i ST003.fasta
	bat: RemoveN -i \*.fasta 
	outfile: <filename>_contig.fasta"
        exit -1                                                                                                                                            
    }   
    if [ $# -eq 0 ];then
        printUsage
    fi  
    while getopts :hi: opts;do
        case "$opts" in
            i)  
                inputfile="$OPTARG"
#                if [ ! -f $inputfile ];then
#                    echo "The input file $inputfile doesn't exist!"
#                    exit -1
#                fi  
                ;;  
            h)  
                printUsage
                ;;  
            :)  
                echo "$0 must supply an argument to option -$OPTARG!"
                printUsage
                ;;  
            ?)  
                echo "invalid option -$OPTARG ignored!"
                printUsage
;;
        esac                                                                                                                                               
    done
for input in $inputfile
do
echo "$input";awk '{ gsub(/[nN]*{,}[nN]/,"\n>\n"); print $0 }' $input >"$input"_panda_out
done
for f in *_panda_out; do b=`basename $f .fasta_panda_out`; usearch11.0.667_i86linux32 -fastx_relabel $f -prefix ${b}_ -fastaout "${b}"_contig.fasta; done
rm *_panda_out 
