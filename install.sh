#!/bin/bash

# These commands are just for termux installation

$dataPath = "/data/data/com.termux/files/usr/bin/zsh"
cp ./shortcut.sh /data/data/com.termux/files/usr/bin/shortcut
chmod +x /data/data/com.termux/files/usr/bin/shortcut

touch ~/.scrc
cat alias.sh >> ~/.zshrc
