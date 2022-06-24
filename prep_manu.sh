#!/bin/bash

set -e # fail on error

# remove all existing files, to regenerate
rm -v ./202206_FewShotLearningForLowDataDrugDiscovery_Vella*

cd ./paper
rubber --clean main supporting_information
rm main.out 
zip -9r ../202206_FewShotLearningForLowDataDrugDiscovery_Vella_LaTeX.zip ./* -x "./corrections/*" -x "./img/graphical_abstract.tif"
cp -v ./supporting_information.pdf ../202206_FewShotLearningForLowDataDrugDiscovery_Vella_SupportingInformation.pdf
cp -v ./main.pdf ../202206_FewShotLearningForLowDataDrugDiscovery_Vella.pdf
cp -v ./img/cover_art.png ../202206_FewShotLearningForLowDataDrugDiscovery_Vella_CoverArt.png
cd .. # take us back to the old dir
