#!/bin/bash

a=$1
bash ./child.sh $a &
i=2;
n1=1;
n2=1;
while [[ $i -le $a ]]
do
    let i=$i+1;
    k=$n2;
    let n2=$n1+$n2;
    n1=$k;
done
echo -n "parent with PID = "$$", output = " 
echo $n2
echo -n "has this children: ";
pgrep -P $$;


sleep 20