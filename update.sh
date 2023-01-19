#!/bin/sh

rm -rf hyprland/.config/hypr && cp -r ~/.config/hypr hyprland/.config
rm -rf fuzzel/.config/fuzzel && cp -r ~/.config/fuzzel fuzzel/.config
rm -rf waybar/.config/waybar && cp -r ~/.config/waybar waybar/.config
rm -rf foot/.config/foot && cp -r ~/.config/foot foot/.config
rm -rf fontconfig/.config/fontconfig && cp -r ~/.config/fontconfig fontconfig/.config
rm -rf scripts/Workspace/Scripts && cp -r ~/scripts/Workspace/Scripts scripts/Workspace
rm -rf swaylock/.config/swaylock && cp -r ~/.config/swaylock swaylock/.config
rm -rf wlogout/.config/wlogout && cp -r ~/.config/wlogout wlogout/.config
