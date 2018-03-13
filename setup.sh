#$/bin/sh

# 更新源
pacman -Syu
# 安装依赖
pacman -S openbox compton pcmanfm tint2 fcitx pamixer

# 复制配置到指定目录
config_dir=~/.config/openbox

if [ ! -d $config_dir ]; then
    mkdir $config_dir
fi

files=[autostart, environment, rc.xml, menu.xml]

for file in $files
do
    cp $file $config_dir
done

