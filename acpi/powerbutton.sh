#!/bin/bash

pushd $(dirname "${BASH_SOURCE[0]}")

FILE=powerbutton_pressed
NOW=$(date +%s)

if [[ -f "$FILE" ]]; then
  # Read timestamp of previous powerbutton press from file
  echo "File exists"
  typeset -i PREV=$(cat $FILE)
  echo Compare $NOW and $PREV

  # if two powerbutton presses were <1 seconds apart -> shutdown
  if [[ $(($NOW-$PREV)) -lt 2 ]]; then
    # Shutdown
    echo "Powerbutton pressed twice in a row: Shutting down"
    shutdown now
  else
    echo "Toggle TDM"
    /home/freek/smc_util/tdm_toggle.sh &
  fi
else
  echo "Toggle TDM"
  /home/freek/smc_util/tdm_toggle.sh &
fi

echo $NOW > $FILE

popd
