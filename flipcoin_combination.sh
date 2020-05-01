#! /bin/bash/
random=$(( $RANDOM%2 ))
if [ $random -eq 1 ]
then
   echo "heads won"
else
   echo "tails won"
fi
