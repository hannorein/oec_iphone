#!/bin/bash

commit (){
  git add *
  git commit -a -m "$1"
}


commit "before automatic update"
cp open_exoplanet_catalogue/images/*.* data_images/ 
commit "automatic update: copied images"

#git push
