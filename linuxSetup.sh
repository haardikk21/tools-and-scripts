sudo apt update
sudo apt upgrade -y

echo "Installing Snap"
sudo apt install -y snapd

echo "Installing software"
sudo snap install vscodium

sudo apt install -y apt-transport-https curl
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key add -
sudo sh -c "echo 'deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com $(lsb_release -sc) main' >> /etc/apt/sources.list.d/brave.list"
sudo apt update && sudo apt install -y brave-browser

sudo add-apt-repository -y ppa:gnome-terminator
sudo apt update
sudo apt install -y terminator

sudo snap install spotify

sudo snap install slack --classic

curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt update
sudo apt install -y nodejs

sudo apt remove docker docker-engine docker.io
sudo apt install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker

sudo curl -L "https://github.com/docker/compose/releases/download/1.25.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

sudo wget -O /usr/local/golang.tar.gz https://dl.google.com/go/go1.14.1.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf /usr/local/golang.tar.gz
export PATH=$PATH:/usr/local/go/bin

# Delete below line if you don't want Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh


echo "Installing VS Code Extensions"

echo "Installing VS Code Icons"
code --install-extension robertohuertasm.vscode-icons

echo "Installing Golang Extension"
code --install-extension ms-vscode.go

echo "Installing Python Extension"
code --install-extension ms-python.python

echo "Installing Ayu theme"
code --install-extension teabyii.ayu

echo "Installing ESLint"
code --install-extension dbaeumer.vscode-eslint

echo "Installing Prettier code formatter"
code --install-extension esbenp.prettier-vscode
