#!/bin/bash

fl='"../model_4_0.out"' 
comm=""

echo $0, $1, $2

../KaSim_3 -i 4_MtrABC.ka -t 1.0E-3 -p 100 -o model_4_0.temp
cat model_4_0.temp | cut -c 2- > ../model_4_0.out
rm model_4_0.temp

for i in 2 3 4
do
  comm="$comm, $fl u 1:$i w l"
done

comm=${comm:1}

gnuplot -persist <<TillHere

set key autotitle columnhead
set terminal png
set output 'out.png'
plot $comm
TillHere
