#!/bin/bash

if [[ $1 = 'add' ]]; then
  echo $2 >> $PROGRAMDIR/bashscripts/binge/bingelist

else
  while IFS= read -r line; do

    if [[ $(grep 'https://www.' <<< $line) != '' ]]; then 
      firefox -private-window $line
    fi

  done < $PROGRAMDIR/bashscripts/binge/bingelist
  
fi

