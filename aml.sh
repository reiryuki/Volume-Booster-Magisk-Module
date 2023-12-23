[ ! "$MODPATH" ] && MODPATH=${0%/*}

# destination
MODMPS=`find $MODPATH -type f -name *mixer*paths*.xml`

# patch mixer paths
for MODMP in $MODMPS; do
  if ! grep -q '"RX7 Digital Volume"' $MODMP; then
    sed -i '/<mixer>/a\
    <ctl name="RX7 Digital Volume" value="100" />' $MODMP
  else
    ROWS=`grep '"RX7 Digital Volume"' $MODMP | sed -e 's|<ctl name="RX7 Digital Volume" value="||g' -e 's|" />||g' -e 's|"/>||g'`
    for ROW in $ROWS; do
      sed -i "s|\"RX7 Digital Volume\" value=\"$ROW\"|\"RX7 Digital Volume\" value=\"100\"|g" $MODMP
    done
  fi
  if ! grep -q '"RX6 Digital Volume"' $MODMP; then
    sed -i '/<mixer>/a\
    <ctl name="RX6 Digital Volume" value="100" />' $MODMP
  else
    ROWS=`grep '"RX6 Digital Volume"' $MODMP | sed -e 's|<ctl name="RX6 Digital Volume" value="||g' -e 's|" />||g' -e 's|"/>||g'`
    for ROW in $ROWS; do
      sed -i "s|\"RX6 Digital Volume\" value=\"$ROW\"|\"RX6 Digital Volume\" value=\"100\"|g" $MODMP
    done
  fi
  if ! grep -q '"RX5 Digital Volume"' $MODMP; then
    sed -i '/<mixer>/a\
    <ctl name="RX5 Digital Volume" value="100" />' $MODMP
  else
    ROWS=`grep '"RX5 Digital Volume"' $MODMP | sed -e 's|<ctl name="RX5 Digital Volume" value="||g' -e 's|" />||g' -e 's|"/>||g'`
    for ROW in $ROWS; do
      sed -i "s|\"RX5 Digital Volume\" value=\"$ROW\"|\"RX5 Digital Volume\" value=\"100\"|g" $MODMP
    done
  fi
  if ! grep -q '"RX4 Digital Volume"' $MODMP; then
    sed -i '/<mixer>/a\
    <ctl name="RX4 Digital Volume" value="100" />' $MODMP
  else
    ROWS=`grep '"RX4 Digital Volume"' $MODMP | sed -e 's|<ctl name="RX4 Digital Volume" value="||g' -e 's|" />||g' -e 's|"/>||g'`
    for ROW in $ROWS; do
      sed -i "s|\"RX4 Digital Volume\" value=\"$ROW\"|\"RX4 Digital Volume\" value=\"100\"|g" $MODMP
    done
  fi
  if ! grep -q '"RX3 Digital Volume"' $MODMP; then
    sed -i '/<mixer>/a\
    <ctl name="RX3 Digital Volume" value="100" />' $MODMP
  else
    ROWS=`grep '"RX3 Digital Volume"' $MODMP | sed -e 's|<ctl name="RX3 Digital Volume" value="||g' -e 's|" />||g' -e 's|"/>||g'`
    for ROW in $ROWS; do
      sed -i "s|\"RX3 Digital Volume\" value=\"$ROW\"|\"RX3 Digital Volume\" value=\"100\"|g" $MODMP
    done
  fi
  if ! grep -q '"RX2 Digital Volume"' $MODMP; then
    sed -i '/<mixer>/a\
    <ctl name="RX2 Digital Volume" value="100" />' $MODMP
  else
    ROWS=`grep '"RX2 Digital Volume"' $MODMP | sed -e 's|<ctl name="RX2 Digital Volume" value="||g' -e 's|" />||g' -e 's|"/>||g'`
    for ROW in $ROWS; do
      sed -i "s|\"RX2 Digital Volume\" value=\"$ROW\"|\"RX2 Digital Volume\" value=\"100\"|g" $MODMP
    done
  fi
  if ! grep -q '"RX1 Digital Volume"' $MODMP; then
    sed -i '/<mixer>/a\
    <ctl name="RX1 Digital Volume" value="100" />' $MODMP
  else
    ROWS=`grep '"RX1 Digital Volume"' $MODMP | sed -e 's|<ctl name="RX1 Digital Volume" value="||g' -e 's|" />||g' -e 's|"/>||g'`
    for ROW in $ROWS; do
      sed -i "s|\"RX1 Digital Volume\" value=\"$ROW\"|\"RX1 Digital Volume\" value=\"100\"|g" $MODMP
    done
  fi
  if ! grep -q '"RX0 Digital Volume"' $MODMP; then
    sed -i '/<mixer>/a\
    <ctl name="RX0 Digital Volume" value="100" />' $MODMP
  else
    ROWS=`grep '"RX0 Digital Volume"' $MODMP | sed -e 's|<ctl name="RX0 Digital Volume" value="||g' -e 's|" />||g' -e 's|"/>||g'`
    for ROW in $ROWS; do
      sed -i "s|\"RX0 Digital Volume\" value=\"$ROW\"|\"RX0 Digital Volume\" value=\"100\"|g" $MODMP
    done
  fi
done








