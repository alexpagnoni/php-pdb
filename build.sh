#!/bin/bash

WHERE=`pwd`

if [ -a .encoded ]; then
  TGZ_NAME="php-pdb-1.3.1-1.tgz"
  DIR_NAME="php-pdb-enc"
else
  TGZ_NAME="php-pdb-1.3.1-1.tgz"
  DIR_NAME="php-pdb"
  ./sdk.sh
fi

cd ..
tar -cvz --exclude=OLD --exclude=work --exclude=*~ --exclude=CVS --exclude=.?* --exclude=np --exclude=.cvsignore -f $TGZ_NAME $DIR_NAME
cd $WHERE
