mkdir ~/.dotfiles

sudo apt-get install git curl maven vim vlc python3-pip terminator geany exfat-fuse exfat-utils exuberant-ctags

# Tmux
cd
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
curl 'https://raw.githubusercontent.com/rishabhdeepsingh/.dotfiles/master/.tmux.conf.local' -o ~/.tmux.conf.local

# Zsh
git clone https://github.com/robbyrussell/oh-my-zsh.git "$HOME/.dotfiles/.oh-my-zsh"
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.dotfiles/.zsh-syntax-highlighting" --depth 1
curl 'https://raw.githubusercontent.com/rishabhdeepsingh/.dotfiles/master/.zshrc' -o ~/.zshrc

# Vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
curl 'https://raw.githubusercontent.com/rishabhdeepsingh/.dotfiles/master/.vimrc' -o ~/.vimrc

# Bashrc
curl 'https://raw.githubusercontent.com/rishabhdeepsingh/.dotfiles/master/.bashrc' -o ~/.bashrc
