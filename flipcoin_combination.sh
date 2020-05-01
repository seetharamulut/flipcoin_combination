#! /bin/bash/ 
declare -A count=( [heads]="0" [tails]="0" )
total_count=0

while [ $total_count -lt 50 ]
do
  total_count=$(( $total_count+1))
  random=$(( $RANDOM%2 ))
  if [ $random -eq 1 ] 
  then
   count[heads]=$(( ${count[heads]}+1 ))
  else
   count[tails]=$(( ${count[tails]}+1 ))
  fi
done
echo "heads percentage in singlet combination is :" $(( 100*${count[heads]}/$total_count ))
echo "tails percentage is singlet combination is :" $(( 100*${count[tails]}/$total_count ))
