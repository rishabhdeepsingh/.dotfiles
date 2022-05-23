# dotfiles and setup for linux and mac

## IDE's
    sudo apt-get install snapd && sudo apt-get install snap
    #sudo snap set core proxy.http=http://172.16.2.30:8080
    #sudo snap set core proxy.https=http://172.16.2.30:8080
    sudo snap install clion --classic
    sudo snap install intellij-idea-ultimate --classic
    sudo snap install android-studio --classic

## ZSH
    sudo apt install zsh
    curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
    git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.dotfiles/.oh-my-zsh
    ln -s ~/.dotfiles/.zshrc ~/.zshrc


## Bashrc
    ln -s ~/.dotfiles/.bashrc ~/.bashrc

