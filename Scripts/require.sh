#!/bin/bash
sed -i 	"/export g_margin=/cexport g_margin=\$(( b_height*20/100 ))" /home/liu/.local/share/bin/wbarstylegen.sh
sed -i	"/export s_fontpx=/cexport s_fontpx=\$(( b_height*45/100 ))" /home/liu/.local/share/bin/wbarstylegen.sh
sed -i	"/export x3g_margin=/c\        export x3g_margin=0" /home/liu/.local/share/bin/wbarstylegen.sh

cat << EOF >> /home/liu/.config/waybar/config.ctl
0|28|top|( idle_inhibitor clock tray ) ( hyprland/workspaces wlr/taskbar )|( hyprland/window )|( network cpu memory ) ( backlight pulseaudio battery pulseaudio#microphone custom/keybindhint custom/cliphist custom/notifications custom/power )
EOF

sed -i '/"interval"/c\        "interval": 2,' /home/liu/.config/waybar/modules/cpu.jsonc
sed -i '/"interval"/c\        "interval": 2,' /home/liu/.config/waybar/modules/memory.jsonc
sed -i '/"interval"/c\        "interval": 2,' /home/liu/.config/waybar/modules/cpuinfo.jsonc
sed -i '/"max-length"/c\        "max-length": 60' /home/liu/.config/waybar/modules/window.jsonc

cat << EOF >> /home/liu/.config/gtk-3.0/settings.ini
gtk-im-module=fcitx
EOF

sed -i '/"format-wifi"/c\        "format-wifi": "󰇚{bandwidthDownBytes} 󰕒{bandwidthUpBytes}",' /home/liu/.config/waybar/modules/network.jsonc
sed -i '/"format-ethernet"/c\        "format-ethernet": "󰇚{bandwidthDownBytes} 󰕒{bandwidthUpBytes}",' /home/liu/.config/waybar/modules/network.jsonc

sed -i '/font_size/cfont_size 10.0' /home/liu/.config/kitty/kitty.conf
cat << EOF >> /home/liu/.config/kitty/kitty.conf

map f1 create_marker
map f2 remove_marker
map ctrl+p scroll_to_mark prev
map ctrl+n scroll_to_mark next
EOF

sed -i "/bind = \$mainMod, mouse_down/cbind = \$mainMod, mouse_down, workspace, e-1" /home/liu/.config/hypr/keybindings.conf
sed -i "/bind = \$mainMod, mouse_up/cbind = \$mainMod, mouse_up, workspace, e+1" /home/liu/.config/hypr/keybindings.conf

sed -i "/misc/a\    mouse_move_enables_dpms = true" /home/liu/.config/hypr/hyprland.conf
sed -i "/misc/a\    key_press_enables_dpms = true" /home/liu/.config/hypr/hyprland.conf

sed -i '/rotate/a\        "on-click": "sleep.sh",' /home/liu/.config/waybar/modules/idle_inhibitor.jsonc
