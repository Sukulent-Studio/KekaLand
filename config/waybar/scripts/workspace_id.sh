#!/bin/bash

# Функция для получения ID текущего рабочего стола
get_workspace() {
    hyprctl activeworkspace -j | jq -r '.id'
}

# Выводим начальное значение при запуске
get_workspace

# Слушаем события через сокет Hyprland
# socket2.sock транслирует события в реальном времени
socat -U - UNIX-CONNECT:$XDG_RUNTIME_DIR/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock | while read -r line; do
    # Если произошло событие смены рабочего стола (workspace) 
    # или перемещения окна на другой стол (movewindow/movetoworkspace)
    if [[ $line == "workspace>>"* ]]; then
        get_workspace
    fi
done