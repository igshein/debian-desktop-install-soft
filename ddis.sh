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

## Slack
wget https://downloads.slack-edge.com/linux_releases/slack-desktop-3.3.8-amd64.deb
sudo apt-get -y install ./slack-desktop-*.deb
rm slack-desktop-3.3.8-amd64.deb

## Telegram
sudo apt-get -y install telegram-desktop

## MegaSync
## https://mega.nz/linux/MEGAsync/Debian_9.0/amd64/megasync-Debian_9.0_amd64.deb
wget https://mega.nz/linux/MEGAsync/Debian_10.0/amd64/megasync-Debian_10.0_amd64.deb
sudo dpkg -i megasync-Debian_10.0_amd64.deb
rm megasync-Debian_10.0_amd64.deb


## Viber
wget -O ~/viber.deb http://download.cdn.viber.com/cdn/desktop/Linux/viber.deb
sudo apt-mark hold libcurl4
sudo dpkg -i --ignore-depends=libcurl3 ~/viber.deb
sudo apt-get -y -f install
sudo dpkg -i --ignore-depends=libcurl3 ~/viber.deb
sudo apt-mark unhold libcurl4
sudo apt-get -y install libcurl3 ~/viber.deb
## Fixed depends after install Viber
sudo apt -y --fix-broken install
rm viber.deb
