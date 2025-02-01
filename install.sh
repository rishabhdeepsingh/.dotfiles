mkdir ~/.dotfiles
mkdir ~/tools
mkdir ~/softwares

sudo apt-get install zsh tmux gradle npm curl vim exuberant-ctags jq python3-pip git nmap rename

# Tmux
ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf

# Zsh
git clone https://github.com/robbyrussell/oh-my-zsh.git "$HOME/.dotfiles/.oh-my-zsh"
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.dotfiles/.zsh-syntax-highlighting" --depth 1
curl 'https://raw.githubusercontent.com/rishabhdeepsingh/.dotfiles/master/.zshrc' -o ~/.zshrc

# install git alias
git config --global include.path ~/.dotfiles/gitalias/gitalias.txt

# Neovim setup
ln -sv ~/.dotfiles/nvim/.config/nvim/ ~/.config/nvim

echo "Installing tools"
cd ~/tools/

echo "installing Sublist3r"
git clone https://github.com/aboul3la/Sublist3r.git
cd Sublist3r*
pip install -r requirements.txt
cd ~/tools

echo "installing Lazyrecon"
git clone https://github.com/nahamsec/lazyrecon.git

echo "installing crtndstry"
git clone https://github.com/nahamsec/crtndstry.git

echo "installing massdns"
git clone https://github.com/blechschmidt/massdns.git
cd ~/tools/massdns
make
cd ~/tools/
echo "done"

./setup_go.sh
./setup_git.sh

echo "Setup completed"

