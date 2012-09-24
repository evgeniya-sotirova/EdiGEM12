#!/bin/bash

nr=$1
tmp=$(echo $RANDOM)".out"
m=${3:-""}

echo "Running model $nr"

dr="model"$nr
fs="../"$dr"/"$nr"_"

mod4="4_MtrABC.ka"
mod5="5_UFe.ka"
mod6="6.ka"
mod1="1_TCA.ka"
mod2="2_NapC.ka"

#mod="mod$nr"

echo $dr, $fs, $mod, ${!mod}

for i in $(seq 0 $2)
do
  fl=$fs$i$m".out"
  echo $fl, $mod, ${!mod}
  ../KaSim_3 -i $mod1 -i $mod2 -i $mod6 -t 5.0E5 -p 1000 -o $tmp
  cat $tmp | cut -c 2- > $fl
  rm $tmp
done

java -jar ../MeanPlotViewer-v0.0.1.jar
