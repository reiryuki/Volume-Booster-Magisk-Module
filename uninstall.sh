mount -o rw,remount /data
[ -z $MODPATH ] && MODPATH=${0%/*}
[ -z $MODID ] && MODID=`basename "$MODPATH"`

# log
exec 2>/data/media/0/$MODID\_uninstall.log
set -x

# run
. $MODPATH/function.sh

# cleaning
remove_sepolicy_rule







