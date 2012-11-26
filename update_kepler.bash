#!/bin/bash

commit (){
  git add *
  git commit -a -m "$1"
}


commit "before automatic update"

pushd scripts
python create_data_kepler.python
popd
commit "automatic update: create_data_kepler"

#git push
