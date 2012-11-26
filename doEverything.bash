#!/bin/bash
prepare_data ()
{
  pushd scripts
  python create_data.python
  popd
}

prepare_data_kepler ()
{
  pushd scripts
  python create_data_kepler.python
  popd
}

prepare_data_iphone ()
{
  pushd scripts
  python create_data_iphone.python
  popd
}

prepare_data_iphone_91 ()
{
  pushd scripts
  python create_data_iphone_9.1.python
  popd
}

commit (){
  git add *
  git commit -a -m "$1"
}

commit "automatic update"

prepare_data
commit "automatic update: create_data"
prepare_data_kepler
commit "automatic update: create_data_kepler"
prepare_data_iphone
commit "automatic update: create_data_iphone"
prepare_data_iphone_91
commit "automatic update: create_data_iphone_91"

#git push
