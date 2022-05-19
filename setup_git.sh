#!/bin/bash

echo "Setting up git alias"

echo "git status shortcut [usage: git st]"
git config --global alias.st status

echo "decorated log [usage: git lga]"
git config --global alias.lga "log --graph --oneline --all --decorate"

echo "rollback the last commit [usage: git rollback]"
git config --global alias.rollback "reset --soft HEAD~"

echo "unstage the added changes [usage: git unstage]"
git config --global alias.unstage "reset HEAD --"

echo "git hist"
git config --global alias.hist "log --pretty=format:"%h %ad | %s%d [%an]" --graph --date=short"

