#!/bin/bash

#add a link to the binge list

if [[ $1 = 'add' ]]; then
  echo $2 >> $PROGRAMDIR/bashscripts/binge/bingelist

#open all the links in the binge list

else
  while IFS= read -r line; do

    if [[ $(grep 'https://www.' <<< $line) != '' ]]; then 
      firefox -private-window $line
    fi

  done < $PROGRAMDIR/bashscripts/binge/bingelist
  
fi
