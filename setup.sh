#!/bin/sh

# 更新源
sudo pacman -Syu

# 安装依赖
sudo pacman -S openbox compton pcmanfm tint2 fcitx pamixer

# 复制配置到指定目录
config_dir=`realpath ~/.config/openbox`

if [ ! -d $config_dir ]; then
    mkdir $config_dir
fi

files=(
    "autostart"
    "environment"
    "rc.xml"
    "menu.xml"
)

for file in $files
do
    cp `realpath $file` $config_dir
done

