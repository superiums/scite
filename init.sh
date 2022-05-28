userHome=~/.config/scite
echo "export SciTE_USERHOME=$userHome" >> ~/.bashrc
cp ./* $userHome/
sudo cp ./locale.zh_s.properties /usr/share/scite
