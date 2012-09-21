#!/bin/bash

for i in {0..49}
do  
  fl4_1="../model4/CAB_A/4_"$i"_CAB.out"
  fl4_2="../model4/CAB_A/4_"$i"_A.out"
  fl4_3="../model4/CAB_A/merged/4_"$i".out"
  fl5_1="../model5/InsolubleIron/5_"$i"micro.out"
  fl5_2="../model5/InsolubleIron/5_"$i"nano.out"
  fl5_3="../model5/InsolubleIron/merged/5_"$i".out"
  fl51_1="../model5/Flavin/5_"$i"_0.2.out"
  fl51_2="../model5/Flavin/5_"$i"_0.45.out"
  fl51_3="../model5/Flavin/5_"$i"_0.75.out"
  fl51_4="../model5/Flavin/5_"$i"_1.2.out"
  fl51_5="../model5/Flavin/merged/5_"$i".out"
  fl6_1="../model6/napC/6_"$i"_1x_NapC.out"
  fl6_2="../model6/napC/6_"$i"_10x_NapC.out"
  fl6_3="../model6/napC/merged2/6_"$i".out"

  pr -m -t -s" " $fl6_1 $fl6_2 | awk '{print $1, $5, $6, $7, $12, $13, $14}' > $fl6_3
done

java -jar ../MeanPlotViewer-v0.0.1.jar &
