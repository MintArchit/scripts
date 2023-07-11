#!/bin/bash
export SDL_VIDEODRIVER=wayland
export MOZ_ENABLE_WAYLAND=1
#export GTK_THEME=Adwaita:dark
export QT_QPA_PLATFORMTHEME=qt5ct

cd ~

# Log WLR errors and logs to the hyprland log. Recommended
export HYPRLAND_LOG_WLR=1

# Tell XWayland to use a cursor theme
#export XCURSOR_THEME=Bibata-Modern-Classic

# Set a cursor size
export XCURSOR_SIZE=12

# Example IME Support: fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export SDL_IM_MODULE=fcitx
export GLFW_IM_MODULE=ibus

exec Hyprland
