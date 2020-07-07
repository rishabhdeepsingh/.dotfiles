mkdir ~/.dotfiles
mkdir ~/tools
mkdir ~/softwares

sudo apt-get install gradle npm curl vim terminator geany exfat-fuse exfat-utils exuberant-ctags golang jq python3-pip python-dnspython git nmap rename

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

echo "Installing httprobe waybackurls assetfinder gron aquatone unfurl"
go get -u github.com/OJ/gobuster
go get -u github.com/tomnomnom/httprobe
go get -u github.com/tomnomnom/waybackurls
go get -u github.com/tomnomnom/assetfinder
go get -u github.com/tomnomnom/gron
go get -u github.com/michenriksen/aquatone
go get -u github.com/ffuf/ffuf
go get -u github.com/tomnomnom/unfurl
echo "Done"
