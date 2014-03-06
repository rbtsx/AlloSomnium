#! /bin/bash
# get AlloSystem as a submodule
git init

# After git 1.8.4 you can use --depth 1 as an option to submodule add, in the meantime
# see hack below
git clone -b devel --depth 1 https://github.com/AlloSphere-Research-Group/AlloSystem.git AlloSystem
git clone --depth 1 https://github.com/AlloSphere-Research-Group/GLV.git GLV
git clone --depth 1 https://github.com/AlloSphere-Research-Group/Gamma.git Gamma
#git submodule add https://github.com/AlloSphere-Research-Group/vsr.git AlloSystem

# get cmake branch. Will need to change once cmake is merged
#cd AlloSystem
#git checkout devel
#git pull origin devel
#cd ..
cd GLV
git checkout cmake
git pull origin cmake
cd ..
cd Gamma
git checkout cmake
git pull origin cmake
cd ..


#git add -A
#git commit -m "Initial commit for project"


