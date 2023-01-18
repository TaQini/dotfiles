#!/bin/sh

rm -rf hyprland/.config/hypr && cp -r ~/.config/hypr hyprland/.config
rm -rf fuzzel/.config/fuzzel && cp -r ~/.config/fuzzel fuzzel/.config
rm -rf foot/.config/foot && cp -r ~/.config/foot foot/.config
rm -rf fontconfig/.config/fontconfig && cp -r ~/.config/fontconfig fontconfig/.config
rm -rf scripts/Workspace/Scripts && cp -r ~/scripts/Workspace/Scripts scripts/Workspace
