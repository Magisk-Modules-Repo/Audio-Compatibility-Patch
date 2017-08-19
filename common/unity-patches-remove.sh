# v DO NOT MODIFY v
# See instructions file for predefined variables
# Add patches (such as audio config) here (starting at line 9)
# NOTE: Destination variable must have '$UNITYPATCH' in front of it
# Patch Ex: sed -i '/v4a_standard_fx {/,/}/d' $UNITYPATCH$CONFIG_FILE
#
#
# ^ DO NOT MODIFY ^
for RESTORE in $A2DP_AUD_POL $AUD_POL $AUD_POL_CONF $AUD_POL_VOL $SUB_AUD_POL $USB_AUD_POL $V_AUD_OUT_POL $V_AUD_POL; do
  if [ -f $RESTORE ]; then
    cp -f $UNITYPATCH$RESTORE.bak $UNITYPATCH$RESTORE
  fi
done