##!/bin/bash
#sed -i '/export g_margin=/cexport g_margin=\$(( b_height*20/100 ))
#         /export s_fontpx=/cexport s_fontpx=\$(( b_height*45/100 ))
#         /export x3g_margin=/c\        export x3g_margin=0' ~/.local/lib/hyde/wbarstylegen.sh
#
#cat <<EOF >>~/.config/waybar/config.ctl
#1|28|top|( clock tray ) ( hyprland/workspaces ) ( wlr/taskbar )|( hyprland/window )|( network cpu memory ) ( backlight pulseaudio battery pulseaudio#microphone custom/cliphist custom/notifications custom/power )
#EOF
#
#sed -i '/"interval"/c\        "interval": 2,' ~/.config/waybar/modules/cpu.jsonc
#sed -i '/"interval"/c\        "interval": 2,' ~/.config/waybar/modules/memory.jsonc
#sed -i '/"interval"/c\        "interval": 2,' ~/.config/waybar/modules/cpuinfo.jsonc
#sed -i '/"max-length"/c\        "max-length": 60' ~/.config/waybar/modules/window.jsonc
#sed -i '/"format-wifi"/c\        "format-wifi": "󰇚{bandwidthDownBytes} 󰕒{bandwidthUpBytes}",' ~/.config/waybar/modules/network.jsonc
#sed -i '/"format-ethernet"/c\        "format-ethernet": "󰇚{bandwidthDownBytes} 󰕒{bandwidthUpBytes}",' ~/.config/waybar/modules/network.jsonc

cat <<EOF >>~/.config/gtk-3.0/settings.ini
gtk-im-module=fcitx
EOF

sed -i '$a enable_cursor_trail yes\ncursor_trail 3\ncursor_trail_decay 0.1 0.3\nbackground_opacity 0.80' ~/.config/kitty/kitty.conf

# sed -i '/bind = \$mainMod, mouse_down/cbind = \$mainMod, mouse_down, workspace, e-1
#         /bind = \$mainMod, mouse_up/cbind = \$mainMod, mouse_up, workspace, e+1
#         /fullscreen/cbind = $mainMod, Return, fullscreen
#         /screenshot.sh/s/^/# /
#         /Screencapture/a\bind = Alt, Q, exec, $scrPath/screenshot.sh sf\
#         bind = Alt, W, exec, $scrPath/screenshot.sh m' ~/.config/hypr/keybindings.conf
#
sed -i '/misc/a\    mouse_move_enables_dpms = true
        /misc/a\    key_press_enables_dpms = true
        /natural_scroll/c\        natural_scroll = true
        /touchpad/a\        scroll_factor = 0.3' ~/.config/hypr/hyprland.conf

sed -i '/F10/d
        /F11/d
        /F12/d' ~/.config/hypr/keybindings.conf
