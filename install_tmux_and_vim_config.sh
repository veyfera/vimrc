#!/bin/bash

mkdir ~/.vimstuff
mkdir ~/.vimstuff/backup
mkdir ~/.vimstuff/backup/swap
mkdir ~/.vimstuff/backup/undos

mv _ideavimrc .vimrc
mv .vimrc ~/

mv k.tmux.conf .tmux.conf
mv .tmux.conf ~/
