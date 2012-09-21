#!/bin/bash

fls="../model_4_0.out" 
fl='"../model_4_0.out"'
mod1="4_MtrABC.ka"
mod2="5_UFe.ka"
mod3="6.ka"
comm=""

echo $0, $1, $2

../KaSim_2 -i $mod3 -t 1.0E-2 -p 100 -o model_4_0.temp
cat model_4_0.temp | cut -c 2- > $fls
rm model_4_0.temp

rowCount=$(head -n 1 $fls | wc -w)
echo $rowCount

for i in $(seq 3 $rowCount)
do
  comm="$comm, $fl u 1:$i w l"
done

comm=${comm:1}

gnuplot -persist <<TillHere

set key autotitle columnhead
plot $comm

set terminal jpeg
set output "output.jpeg"
replot

TillHere
