#!/bin/bash

set -e # fail on error

cd ./paper
rubber --clean main supporting_information
zip -9r ../202206_FewShotLearningForLowDataDrugDiscovery_Vella_LaTeX.zip ./* -x "./corrections/*" 
cp -v ./supporting_information.pdf ../202206_FewShotLearningForLowDataDrugDiscovery_Vella_SupportingInformation.pdf
cp -v ./main.pdf ../202206_FewShotLearningForLowDataDrugDiscovery_Vella.pdf
cp -v ./img/cover_art.png ../202206_FewShotLearningForLowDataDrugDiscovery_Vella_CoverArt.png
cd ..
