#!/usr/bin/env bash

# You can call this script like this:
# $ ./volumeControl.sh up
# $ ./volumeControl.sh down
# $ ./volumeControl.sh mute

# Script modified from these wonderful people:
# https://github.com/dastorm/volume-notification-dunst/blob/master/volume.sh
# https://gist.github.com/sebastiencs/5d7227f388d93374cebdf72e783fbd6a

function get_volume {
  pamixer --get-volume-human | cut -d '%' -f 1
}

function is_mute {
    res=$(pamixer --get-mute)
    $res
}

function send_notification {
  icon="gespeaker"
  volume=$(get_volume)
  # Make the bar with the special character ─ (it's not dash -)
  # https://en.wikipediorg/wiki/Box-drawing_character
  bar=$(seq -s "─" 0 $((volume / 5)) | sed 's/[0-9]//g')"$volume"
  # Send the notification
  notif_path="$XDG_RUNTIME_DIR"/.volume_notif
  notif=$(cat "$notif_path")
  if ! echo "$notif" | grep '[[:digit:]]'; then
      notif=0
  fi
  notify-send -p -i "$icon" -r "$notif" "$bar"> "$notif_path"
}

case $1 in
  up)
    # set the volume on (if it was muted)
    if is_mute ; then
        pamixer -u
    fi
    pamixer -i 5
    ;;
  down)
    if is_mute ; then
        pamixer -u
    fi
    pamixer -d 5
    ;;
  mute)
    # toggle mute
    if is_mute ; then
        pamixer -u
    else
        pamixer -m
    fi
    ;;
esac

send_notification

# notify-send 'Volume: '`get_volume`
