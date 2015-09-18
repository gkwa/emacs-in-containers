#!/bin/sh

cd ~/
git init
git remote rm origin 2>/dev/null

git remote add origin https://github.com/taylormonacelli/dotfiles.git
git fetch --prune
git checkout --track --force origin/master

git remote rm origin
git remote add origin git@github.com:taylormonacelli/dotfiles.git

# pull down elpa/melpa files based off whats in ~/.emacs
emacs --daemon