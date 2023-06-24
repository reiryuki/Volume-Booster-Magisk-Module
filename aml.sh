[ -z $MODPATH ] && MODPATH=${0%/*}

# destination
MODMP=`find $MODPATH -type f -name *mixer*paths*.xml`

# patch mixer paths
if ! grep -q '"RX3 Digital Volume"' $MODMP; then
  sed -i '/<mixer>/a\
    <ctl name="RX3 Digital Volume" value="100" />' $MODMP
else
  ROW=`grep '"RX3 Digital Volume"' $MODMP | sed -e 's|<ctl name="RX3 Digital Volume" value="||g' -e 's|" />||g' -e 's|"/>||g'`
  for ROWS in $ROW; do
    sed -i "s|\"RX3 Digital Volume\" value=\"$ROWS\"|\"RX3 Digital Volume\" value=\"100\"|g" $MODMP
  done
fi
if ! grep -q '"RX2 Digital Volume"' $MODMP; then
  sed -i '/<mixer>/a\
    <ctl name="RX2 Digital Volume" value="100" />' $MODMP
else
  ROW=`grep '"RX2 Digital Volume"' $MODMP | sed -e 's|<ctl name="RX2 Digital Volume" value="||g' -e 's|" />||g' -e 's|"/>||g'`
  for ROWS in $ROW; do
    sed -i "s|\"RX2 Digital Volume\" value=\"$ROWS\"|\"RX2 Digital Volume\" value=\"100\"|g" $MODMP
  done
fi
if ! grep -q '"RX1 Digital Volume"' $MODMP; then
  sed -i '/<mixer>/a\
    <ctl name="RX1 Digital Volume" value="100" />' $MODMP
else
  ROW=`grep '"RX1 Digital Volume"' $MODMP | sed -e 's|<ctl name="RX1 Digital Volume" value="||g' -e 's|" />||g' -e 's|"/>||g'`
  for ROWS in $ROW; do
    sed -i "s|\"RX1 Digital Volume\" value=\"$ROWS\"|\"RX1 Digital Volume\" value=\"100\"|g" $MODMP
  done
fi









