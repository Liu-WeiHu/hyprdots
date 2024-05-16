#!/bin/bash
sudo bash -c 'cat << EOF >> /opt/goland/bin/goland64.vmoptions
-javaagent:/home/liu/Documents/jetbra/ja-netfilter.jar=jetbrains
--add-opens=java.base/jdk.internal.org.objectweb.asm=ALL-UNNAMED
--add-opens=java.base/jdk.internal.org.objectweb.asm.tree=ALL-UNNAMED
EOF'
