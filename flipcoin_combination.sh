#! /bin/bash/ 
declare -A count=( [heads]="0" [tails]="0" [h_h]="0" [h_t]="0" [t_h]="0" [t_t]="0" )
declare -A percentage=( [heads]="0" [tails]="0" [h_h]="0" [h_t]="0" [t_h]="0" [t_t]="0" )

total_count=0

while [ $total_count -lt 50 ]
do
  total_count=$(( $total_count+1))
  random=$(( $RANDOM%2 ))
  random1=$(( $RANDOM%2 ))
  if [ $random -eq 1 ] 
  then
   count[heads]=$(( ${count[heads]}+1 ))
    if [ $random1 -eq 1 ]
    then
      count[h_h]=$(( ${count[h_h]}+1 ))
    else
      count[h_t]=$(( ${count[h_t]}+1 ))
    fi
  else
   count[tails]=$(( ${count[tails]}+1 ))
    if [ $random1 -eq 1 ]
    then
      count[t_h]=$(( ${count[t_h]}+1 ))
    else 
       count[t_t]=$(( ${count[t_t]}+1 ))
    fi
  fi
done

percentage[heads]=$(( 100*${count[heads]}/$total_count ))
percentage[tails]=$(( 100*${count[tails]}/$total_count ))
percentage[h_h]=$(( 100*${count[h_h]}/$total_count ))
percentage[h_t]=$(( 100*${count[h_t]}/$total_count ))
percentage[t_h]=$(( 100*${count[t_h]}/$total_count ))
percentage[t_t]=$(( 100*${count[t_t]}/$total_count ))

echo "heads percentage in singlet combination is :"${percentage[heads]}
echo "tails percentage is singlet combination is :"${percentage[tails]}
echo "heads_heads percentage in doublet combination is :"${percentage[h_h]}
echo "heads_tails percentage is doublet combination is :"${percentage[h_t]}
echo "tails_heads percentage in doublet combination is :"${percentage[t_h]}
echo "tails_tails percentage is doublet combination is :"${percentage[t_t]}




