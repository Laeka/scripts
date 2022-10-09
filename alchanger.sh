#!/bin/bash
colors="$HOME/.config/alacritty/colors.yml"
schemes="$HOME/.config/alacritty/colorschemes"

declare -a options=(
"adaptive"
"Afterglow"
"Argonaut"
"Ayu_dark"
"beach"
"Base16_default_dark"
"Blood_moon"
"bouquet"
"Breeze"
"Bright"
"Campbell"
"catppuccin"
"Challenger_deep"
"Cobalt2"
"colors"
"Cyber_punk_neon"
"cyberpunk"
"Dark_pastels"
"Dawn"
"Doom_one"
"dracula"
"dwm"
"dwm-gruvbox"
"Erosion"
"everforest"
"Falcon"
"Flat_remix"
"Gotham"
"gruvbox"
"Gruvbox_dark"
"Gruvbox_material"
"gruvbox_powerline"
"High_contrast"
"Horizon_dark"
"Hund"
"Hybrid"
"Hyper"
"Invisibone"
"Iterm"
"Jmbi"
"Kasugano"
"keyboards"
"Konsole_linux"
"landscape"
"Low_contrast"
"manhattan"
"map"
"Material_theme"
"Material_theme_mod"
"monokai"
"moonfly"
"Navy"
"ncx"
"nord"
"nxc"
"ocean"
"Oceanic_next"
"Omni"
"onedark"
"Palenight"
"Pastel"
"Pencil_dark"
"polyriver"
"Remedy_dark"
"slime"
"Snazzy"
"Solarized_dark"
"sonokai"
"Sweetlove"
"Taerminal"
"Tango_dark"
"Tender"
"Terminal_app"
"Thelovelace"
"Tokyo_night_storm"
"tokyonight"
"tomorrow-night"
"Tomorrow_night_bright"
"Vacuous"
"Visibone"
"Wombat"
"Xterm"
"Yousai"
"quit"
)

choice=$(printf '%s\n' "${options[@]}" | rofi -dmenu -i -l 20 -p 'Themes')

cp $schemes/$choice.yml $colors