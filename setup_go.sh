#!/bin/bash
# https://github.com/tomnomnom/dotfiles/blob/master/go-setup.sh
# Dirty dirty dirty
VERSION="1.22.3"

wget https://storage.googleapis.com/golang/go$VERSION.linux-amd64.tar.gz
tar xvfz go$VERSION.linux-amd64.tar.gz
sudo rm -rf /usr/local/go
sudo mv go /usr/local/

rm go$VERSION.linux-amd64.tar.gz

echo "Installing httprobe waybackurls assetfinder gron aquatone unfurl"
go install golang.org/x/tools/cmd/goimports@latest
go install github.com/nsf/gocode@latest
go install github.com/OJ/gobuster@latest
go install github.com/tomnomnom/httprobe@latest
go install github.com/tomnomnom/waybackurls@latest
go install github.com/tomnomnom/assetfinder@latest
go install github.com/tomnomnom/gron@latest
go install github.com/michenriksen/aquatone@latest
go install github.com/ffuf/ffuf@latest
go install github.com/tomnomnom/unfurl@latest
echo "Done steup go and tools"

