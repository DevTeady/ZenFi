#!/data/data/com.termux/files/usr/bin/bash

pkg install -y root-repo 
pkg install -y git tsu python wpa-supplicant pixiewps iw python

if [[ -d ".git/" ]]; then
  git pull
else
  git clone --depth 1 https://github.com/DevTeady/ZenFi .
fi

chmod +x zenfi.py

printf "###############################################\n#  All done! Now you can run ZenFi with\n#   sudo python zenfi.py -i wlan0 -K\n#\n#  To update, run\n#   The command again.\n###############################################\n"

printf "Do you want to run the ZenFi script? [Y/n]"
read user
if [[ $user == "Y" || $user == "y" ]]; then
  sudo python3 zenfi.py -i wlan0 -K
else
  printf "Thank You for using!\nexiting...\n"
  exit 1
fi