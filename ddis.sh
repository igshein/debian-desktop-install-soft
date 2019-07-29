sudo apt-get update

## Wget
sudo apt-get -y install wget

## Konsole terminal
sudo apt-get -y install konsole

## Telnet
sudo apt-get -y install telnet

## Git
sudo apt-get -y install git

## Sublime
sudo apt -y install apt-transport-https
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text

## Google chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt-get -y install ./google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb

## Skype
wget https://go.skype.com/skypeforlinux-64.deb
sudo apt-get -y install ./skypeforlinux-64.deb
rm skypeforlinux-64.deb


echo '____________________VERSION_WGET____________________'
wget --version
echo ''

echo '____________________VERSION_KONSOLE____________________'
konsole --version
echo ''

echo '____________________VERSION_TELENET____________________'
telnet --version
echo ''

echo '____________________VERSION_GIT____________________'
git --version
echo ''

echo '____________________VERSION_SUBLIME_TEXT____________________'
sublime-text --version
echo ''

echo '____________________VERSION_GOOGLE_CHROME____________________'
google-chrome --version
echo ''

echo '____________________VERSION_SKYPE____________________'
skype --version
echo ''
