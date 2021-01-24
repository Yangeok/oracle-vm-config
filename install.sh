sudo apt update &&\

# Install network utilities
sudo apt install -y net-tools &&\

# Install git
sudo apt install -y git &&\

# Install zsh & oh-my-zsh
sudo apt install -y zsh &&\
chsh -s $(which zsh) &&\
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" &&\

# Install nodejs
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash - &&\
sudo apt install -y nodejs &&\
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add - &&\
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list &&\
sudo apt update &&\
sudo apt install -y yarn &&\

# Install nginx
sudo apt install -y nginx &&\

# Config iptables for oracle cloud
sudo iptables-save > ~/iptables-rules &&\
iptables -P INPUT ACCEPT &&\
iptables -P OUTPUT ACCEPT &&\
iptables -P FORWARD ACCEPT &&\
iptables -F