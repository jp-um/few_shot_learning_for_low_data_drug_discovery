#!/bin/bash

set -e # fail on error

# remove all existing files, to regenerate
rm -fv ./202209_ci-2022-00779z_FewShotLearningForLowDataDrugDiscovery_Vella*

cd ./paper
rubber --clean main supporting_information
rm -fv main.out 
zip -9r ../202209_ci-2022-00779z_FewShotLearningForLowDataDrugDiscovery_Vella_LaTeX.zip ./* -x "./review/*" -x "./submissions/*" -x "./corrections/*" -x "./img/graphical_abstract.tif"
cp -v ./supporting_information.pdf ../202209_ci-2022-00779z_FewShotLearningForLowDataDrugDiscovery_Vella_SupportingInformation.pdf
cp -v ./main.pdf ../202209_ci-2022-00779z_FewShotLearningForLowDataDrugDiscovery_Vella.pdf
cp -v ./img/cover_art.png ../202209_ci-2022-00779z_FewShotLearningForLowDataDrugDiscovery_Vella_TableOfContentsGraphic.png
cp -v ./coverpage_art/ci-2022-00779z-coverpage-art.png ../202209_ci-2022-00779z_FewShotLearningForLowDataDrugDiscovery_Vella_FrontCover.png
cp -v ./main-diff-rev1.pdf ../202209_ci-2022-00779z_FewShotLearningForLowDataDrugDiscovery_Vella_AnnotatedChanges.pdf
cd .. # take us back to the old dir
