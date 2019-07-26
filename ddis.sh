sudo apt-get update

## Wget
sudo apt-get -y install wget

## Gnome terminal
sudo apt-get -y install gnome-terminal

## Google chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt-get -y install ./google-chrome-stable_current_amd64.deb

## Skype
wget https://go.skype.com/skypeforlinux-64.deb
sudo apt-get -y install ./skypeforlinux-64.deb

## Slack
wget https://downloads.slack-edge.com/linux_releases/slack-desktop-3.3.8-amd64.deb
sudo apt-get -y install ./slack-desktop-*.deb

## Telegram
sudo apt-get -y install telegram-desktop

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
