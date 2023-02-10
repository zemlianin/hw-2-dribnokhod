#!/bin/bash
a=$1
i=1;
n1=1;
while [[ $i -le $a ]]
do
    let n1=$n1*$i;
    let i=$i+1;
done
sleep 1;
echo -n "child with PID = "$$", output = "
echo $n1;

sleep 10