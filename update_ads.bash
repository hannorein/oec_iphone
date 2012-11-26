#!/bin/bash

commit (){
  git add *
  git commit -a -m "$1"
}


pushd scripts
python create_data_ads.python
popd
commit "automatic update: create_data_ads"

#git push
