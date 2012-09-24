#!/bin/bash

fls="../model_4_0.out" 
fl='"../model_4_0.out"'
mod4="4_MtrABC.ka"
mod5="5_UFe.ka"
mod6="6.ka"
mod1="1_TCA.ka"
mod2="2_NapC.ka"
comm=""

echo $0, $1, $2

../KaSim_3 -i $mod1 -i $mod2 -i $mod6 -t 5.0E5 -p 1000 -o model_4_0.temp
cat model_4_0.temp | cut -c 2- > $fls
rm model_4_0.temp

rowCount=$(head -n 1 $fls | wc -w)
echo $rowCount

for i in $(seq 2 $rowCount)
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
