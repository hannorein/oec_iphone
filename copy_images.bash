#!/bin/bash

commit (){
  git add *
  git commit -a -m "$1"
}


commit "before automatic update"
cp open_exoplanet_catalogue/images/*.* data_images/ > copiedimages.txt
cat copiedimages.txt | while read line
do
  echo $line
done
commit "automatic update: copied images"

#git push
