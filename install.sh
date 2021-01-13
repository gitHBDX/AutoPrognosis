#!/usr/bin/env bash

envname=autoprognosis

# Remove the hbdx enviroment if already installed
if conda env list | grep -q $envname; then
    conda deactivate
    conda env remove --name $envname
fi

# Create a new enviroment called hbdx
conda create -n $envname python=3.7 -y
conda activate $envname

conda env list

# Install the mamba package manager
conda install mamba -c conda-forge -y

# Install tensorflow
mamba install tensorflow-gpu keras -c anaconda

# Install python stuff from forge
mamba install pandas gpyopt xgboost sets scikit-learn scipy pivottablejs rpy2 matplotlib tqdm requests jupyter seaborn -c conda-forge -y

# Install r stuff from forge
mamba install r-essentials r-base r-missForest r-glmnet r-ranger r-xmisc r-domc r-doxboost r-randomforestsrc r-party r-softimpute r-coin -c conda-forge -y

