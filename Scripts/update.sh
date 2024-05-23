#!/bin/bash

cd ~/Documents/hyprdots

function obtain_git_branch {
  br=`git branch | grep "*"`
  echo ${br/* /}
}

result=`obtain_git_branch`
if [ "$result" != "current" ]
  then
    git checkout current
    sleep 1
    echo "----------- git checkout current done ------------"
fi



cp /home/liu/.config/hypr/monitors.conf /home/liu/Documents/hyprdots/Configs/.config/hypr/

cp /home/liu/.config/hypr/userprefs.conf /home/liu/Documents/hyprdots/Configs/.config/hypr/

cp -r /home/liu/.config/kitty /home/liu/Documents/hyprdots/Configs/.config/

cp -r /home/liu/.config/mpv /home/liu/Documents/hyprdots/Configs/.config/

cp -r /home/liu/.config/tealdeer /home/liu/Documents/hyprdots/Configs/.config/

cp -r /home/liu/.config/yazi /home/liu/Documents/hyprdots/Configs/.config/

cp /home/liu/.config/chrome-flags.conf /home/liu/Documents/hyprdots/Configs/.config/

cp /home/liu/.config/code-flags.conf /home/liu/Documents/hyprdots/Configs/.config/

cp /home/liu/.config/electron-flags.conf /home/liu/Documents/hyprdots/Configs/.config/

cp /home/liu/.config/user-dirs.dirs /home/liu/Documents/hyprdots/Configs/.config/

cp /home/liu/Documents/require.sh /home/liu/Documents/hyprdots/Scripts/

cp /home/liu/Documents/update.sh /home/liu/Documents/hyprdots/Scripts/

cp /home/liu/Documents/jetbra/active-goland.sh /home/liu/Documents/hyprdots/Scripts/ 

echo "----------------- success ---------------------"
