MODPATH=${0%/*}

# destination
MODMP=`find $MODPATH/system -type f -name *mixer*paths*.xml`

# patch mixer paths
NUM=100
ROW=`grep '"RX1 Digital Volume"' $MODMP | sed 's/<ctl name=\"RX1 Digital Volume\" value=\"//' | sed 's/\" \/>//' | sed 's/\"\/>//' | cut -f 2 -d :`
for ROWS in $ROW; do
  sed -i "s/\"RX1 Digital Volume\" value=\"$ROWS\"/\"RX1 Digital Volume\" value=\"$NUM\"/g" $MODMP
done
ROW=`grep '"RX2 Digital Volume"' $MODMP | sed 's/<ctl name=\"RX2 Digital Volume\" value=\"//' | sed 's/\" \/>//' | sed 's/\"\/>//' | cut -f 2 -d :`
for ROWS in $ROW; do
  sed -i "s/\"RX2 Digital Volume\" value=\"$ROWS\"/\"RX2 Digital Volume\" value=\"$NUM\"/g" $MODMP
done
ROW=`grep '"RX3 Digital Volume"' $MODMP | sed 's/<ctl name=\"RX3 Digital Volume\" value=\"//' | sed 's/\" \/>//' | sed 's/\"\/>//' | cut -f 2 -d :`
for ROWS in $ROW; do
  sed -i "s/\"RX3 Digital Volume\" value=\"$ROWS\"/\"RX3 Digital Volume\" value=\"$NUM\"/g" $MODMP
done


