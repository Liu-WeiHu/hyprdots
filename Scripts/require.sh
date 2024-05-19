#!/bin/bash
sed -i 	'/export g_margin=/cexport g_margin=\$(( b_height*20/100 )) 
         /export s_fontpx=/cexport s_fontpx=\$(( b_height*45/100 )) 
         /export x3g_margin=/c\        export x3g_margin=0' /home/liu/Documents/hyprdots/Configs/.local/share/bin/wbarstylegen.sh

cat << EOF >> /home/liu/Documents/hyprdots/Configs/.config/waybar/config.ctl
0|28|top|( clock tray ) ( hyprland/workspaces wlr/taskbar )|( hyprland/window )|( network cpu memory ) ( backlight pulseaudio battery pulseaudio#microphone custom/cliphist custom/notifications custom/power )
EOF

sed -i '/"interval"/c\        "interval": 2,' /home/liu/Documents/hyprdots/Configs/.config/waybar/modules/cpu.jsonc
sed -i '/"interval"/c\        "interval": 2,' /home/liu/Documents/hyprdots/Configs/.config/waybar/modules/memory.jsonc
sed -i '/"interval"/c\        "interval": 2,' /home/liu/Documents/hyprdots/Configs/.config/waybar/modules/cpuinfo.jsonc
sed -i '/"max-length"/c\        "max-length": 60' /home/liu/Documents/hyprdots/Configs/.config/waybar/modules/window.jsonc
sed -i '/"format-wifi"/c\        "format-wifi": "󰇚{bandwidthDownBytes} 󰕒{bandwidthUpBytes}",' /home/liu/Documents/hyprdots/Configs/.config/waybar/modules/network.jsonc
sed -i '/"format-ethernet"/c\        "format-ethernet": "󰇚{bandwidthDownBytes} 󰕒{bandwidthUpBytes}",' /home/liu/Documents/hyprdots/Configs/.config/waybar/modules/network.jsonc

cat << EOF >> /home/liu/Documents/hyprdots/Configs/.config/gtk-3.0/settings.ini
gtk-im-module=fcitx
EOF

sed -i '/font_size/cfont_size 10.0' /home/liu/Documents/hyprdots/Configs/.config/kitty/kitty.conf

sed -i '/bind = \$mainMod, mouse_down/cbind = \$mainMod, mouse_down, workspace, e-1 
        /bind = \$mainMod, mouse_up/cbind = \$mainMod, mouse_up, workspace, e+1' /home/liu/Documents/hyprdots/Configs/.config/hypr/keybindings.conf

sed -i '/misc/a\    mouse_move_enables_dpms = true 
        /misc/a\    key_press_enables_dpms = true 
        /natural_scroll/c\        natural_scroll = true 
        /touchpad/a\        scroll_factor = 0.3' /home/liu/Documents/hyprdots/Configs/.config/hypr/hyprland.conf  

sed -i '/F10/d 
        /F11/d 
        /F12/d' /home/liu/Documents/hyprdots/Configs/.config/hypr/keybindings.conf
