#!/bin/bash

commit (){
  git add *
  git commit -a -m "$1"
}

git pull

commit "before automatic update"

pushd open_exoplanet_catalogue
git pull
git checkout master
popd
commit "automatic update: pulling new open_exoplanet_catalogue"

pushd scripts
python create_data.python
popd
commit "automatic update: create_data"

pushd scripts
python create_data_iphone.python
popd
commit "automatic update: create_data_iphone"

pushd scripts
python create_data_iphone_9.1.python
popd
commit "automatic update: create_data_iphone_91"

pushd open_exoplanet_catalogue
git pull
popd
pushd scripts
python create_data_iphone_11.python
popd
commit "automatic update: create_data_iphone_11"



git push
./deploy.bash
