# dotfiles and setup for linux

## Essentials for proxy
    sudo nano /etc/apt/apt.conf
    #add below two lines
    Acquire::http::No-Cache true;
    Acquire::http::Pipeline-Depth 0;

## Chrome, VSCode
    sudo apt-get update && sudo apt-get upgrade


## Basic Needs ,Geany, Terminator, Git, Maven
    sudo apt-get install git curl maven vim vlc python3-pip terminator geany

## IDE's
    sudo apt-get install snapd && sudo apt-get install snap
    sudo snap set core proxy.http=http://172.16.2.30:8080
    sudo snap set core proxy.https=http://172.16.2.30:8080
    sudo snap install clion --classic
    sudo snap install intellij-idea-ultimate --classic
    sudo snap install android-studio --classic


## Themes
### Git / VIM
    git clone https://github.com/magicmonty/bash-git-prompt.git ~/.bash-git-prompt --depth=1
    wget -O .bashrc 'https://gist.githubusercontent.com/rishabhdeepsingh/99f48e4771e3bc4932991ebed2b635a2/raw/2b4ad4b280457c7dc56372347023f1ca9b957ed8/.bashrc'
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    wget -O .vimrc 'https://gist.githubusercontent.com/rishabhdeepsingh/783222e8f0a8bc9b1dd5ad5060f58998/raw/a72c7f1a18be7aa400cc5f820db0651714fdfae9/.vimrc'

### [X ARch White](https://gitlab.com/LinxGem33/X-Arc-White/tags/v1.4.7)

------

## JAVA [Download](https://www.oracle.com/technetwork/java/javase/downloads/index.html)  [Install Help](https://www.javahelps.com/2017/09/install-oracle-jdk-9-on-linux.html)
