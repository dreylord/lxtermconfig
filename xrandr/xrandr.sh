#!/bin/bash
#
# Change SCREEN on Two monitors 
#

montype=$HOME/Screen_types_xrandr
MONTYPE='(DVI|VGA|HDMI|DP)'

MONITOR1=(VGA-1)
MONITOR2=(DVI-I-1)

COMM=(/usr/bin/xrandr)
${COMMAND} --prop | xargs -0 | egrep $MONTYPE  > $montype


${COMMAND} --output ${MONITOR1} --left-of ${MONITOR2}
#${COMMAND} --output ${MONITOR1} --right-of ${MONITOR2}

${COMMAND} --output $MONITOR1 --primary
