#!/bin/bash

nr=$1

echo "Running model $nr"

dr="model"$nr
fs="../"$dr"/"$nr"_"

mod4="4_MtrABC.ka"
mod5="5_UFe.ka"
mod6="6.ka"

mod="mod$nr"

echo $dr, $fs, $mod, ${!mod}

for i in $(seq 0 $2)
do
  fl=$fs$i".out"
  q=`eval $mod`
  echo $fl, $mod, $q
  ../KaSim_2 -i ${!mod} -t 1.0E-3 -p 100 -o model.temp
  cat model.temp | cut -c 2- > $fl
  rm model.temp
done

java -jar ../MeanPlotViewer-v0.0.1.jar
