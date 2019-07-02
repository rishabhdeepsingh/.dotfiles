mkdir ~/.dotfiles

# Zsh
sudo apt install zsh
git clone https://github.com/robbyrussell/oh-my-zsh.git "$HOME/.dotfiles/.oh-my-zsh"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.dotfiles/.zsh-syntax-highlighting" --depth 1


# Vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
curl 'https://raw.githubusercontent.com/rishabhdeepsingh/.dotfiles/master/.vimrc' -o ~/.vimrc

# Bashrc
curl 'https://raw.githubusercontent.com/rishabhdeepsingh/.dotfiles/master/.bashrc' -o ~/.bashrc
