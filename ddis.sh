sudo apt-get update

## Wget
sudo apt-get -y install wget
wget --version
echo ''

## Konsole terminal
sudo apt-get -y install konsole
konsole --version
echo ''

## Telnet
sudo apt-get -y install telnet
telnet --version
echo ''

## Git
sudo apt-get -y install git
git --version
echo ''

## Sublime
sudo apt -y install apt-transport-https
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text
sublime-text --version
echo ''

## Google chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt-get -y install ./google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb
google-chrome --version
echo ''

## Skype
wget https://go.skype.com/skypeforlinux-64.deb
sudo apt-get -y install ./skypeforlinux-64.deb
rm skypeforlinux-64.deb
skype --version
echo ''

## Docker
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get -y install apt-transport-https ca-certificates curl gnupg2 software-properties-common
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian stretch stable"
sudo apt-get update
sudo apt-get -y install docker-ce docker-ce-cli containerd.io
## Docker-compose // Get current version https://github.com/docker/compose/releases
sudo curl -L https://github.com/docker/compose/releases/download/1.24.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
## Setting docker-compose
sudo usermod -aG docker $(whoami)
sudo setfacl -m $USER:$USER:rw /var/run/docker.sock
sudo addgroup --system docker
sudo adduser $USER docker
docker-compose --version
echo ''
