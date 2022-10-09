#!/bin/bash

# Last Updated 07 Aug 2022

#Variables & Paths
#IMPORTANT! Change these paths to the appropriate paths on your system. They won't be the same as mine. !IMPORTANT
ptconf="$HOME/.config/polybar/themes/configs/"
pconf="$HOME/.config/polybar/config.ini"
ptcolor="$HOME/.config/polybar/themes/colors"
pcolor="$HOME/.config/polybar/themes/theme.ini"
mods="$HOME/.config/polybar/themes/modules"
pmods="$HOME/.config//polybar/themes/modules/modules.ini"
i3p="$HOME/.config/i3/themes"
i3t="$HOME/.config/i3/theme.conf"
alconf="$HOME/.config/alacritty/"
rofi="$HOME/.config/rofi/"
#bgs="$HOME/pics/bg/"
piconf="$HOME/.config/picom/picom.conf"
dunst="$HOME/.config/dunst/dunstrc.d/"

declare -a options=(
"polyriver"
"cyberpunk"
"dracula"
"catppuccin"
"everforest"
"gruvbox"
"gruvbox_powerline"
"nord"
"ocean"
"onedark"
"tokyonight"
"moonfly"
"sonokai"
"tomorrow-night"
"map"
"adaptive"
"dwm"
"dwm_gruvbox"
"bouquet"
"beach"
"keyboards"
"landscape"
"slime"
"manhattan"
"kiss"
"nxc"
"quit"
)

choice=$(printf '%s\n' "${options[@]}" | rofi -dmenu -i -l 20 -p 'Themes')

if [ $choice = 'quit' ]; then
    echo "No theme selected"
    exit
fi

#Copy Config Files to the Appropriate Places. Placeholder files must exist.
# cp $ptconf/$choice $pconf 
# cp $mods/$choice.ini $pmods 
# cp $ptcolor/$choice.ini $pcolor 
cp $i3p/$choice.conf $i3t 
cp $rofi/$choice.rasi $rofi/theme.rasi
cp $dunst/01-$choice.conf $dunst/99-theme.conf
cp $alconf/colorschemes/$choice.yml $alconf/colors.yml

i3-msg restart

# Toggles Rounded Borders for Catppuccin (coming soon)
#if [ $choice = 'catppuccin' ] || [ $choice = 'onedark' ]
#then
#    sed -i "/corner-radius/c\corner-radius = 15;" $piconf
#elif 
#    sed -i "/corner-radius/c\corner-radius = 0;" $piconf
#fi

# Set Wallpapers
#feh --bg-fil $walls/$choice.jpg

# Change vim color scheme (coming soon)

#Dunst (Disable if you do not use dunst)
killall dunst
while pgrep -u $UID -x dunst >/dev/null; do sleep 1; done

