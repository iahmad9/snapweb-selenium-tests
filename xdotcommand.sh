sleep 30
WID=$(xdotool search "QEMU" | head -1)
xdotool key --window $WID --clearmodifiers --delay 2000 Return Return
xdotool key --window $WID Down
xdotool key --window $WID --clearmodifiers --delay 2000 Return

#xdotool key --window $WID Down
#xdotool key --window $WID Return
xdotool type --window $WID snapweb.ci
xdotool key --window $WID Shift+2
xdotool type --window $WID gmail.com
xdotool key --window $WID --clearmodifiers --delay 2000 Return Return
#xdotool key --window $WID Return


