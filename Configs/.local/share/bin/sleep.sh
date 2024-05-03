#!/usr/bin/env sh

# 定义要检查的进程名称
process_name="swayidle"

# 使用 pgrep 检查进程是否存在
if pgrep "$process_name" > /dev/null
then
    # 进程存在，杀死它
    # echo "进程 $process_name 存在，将被终止。"
    pkill "$process_name"
else
    # 进程不存在，执行其他操作
    # echo "进程 $process_name 不存在，执行其他操作。"
    # 在这里执行你想要的命令或操作
    swayidle -w timeout 300 swaylock timeout 600 'hyprctl dispatch dpms off' resume 'hyprctl dispatch dpms on' timeout 900 'systemctl suspend' before-sleep swaylock
fi
