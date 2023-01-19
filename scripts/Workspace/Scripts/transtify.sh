# transout=$(crow -t zh-CN $(wl-paste -p) -b)
transout=$(proxychains crow -t zh-CN "$(wl-paste -p)" -b)
notify-send -- "$transout"
# echo "$transout"
