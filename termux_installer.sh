#!/data/data/com.termux/files/usr/bin/bash
pkg install -y root-repo 
pkg install -y git tsu python wpa-supplicant pixiewps iw

git clone --depth 1 https://github.com/DevTeady/ZenFi .

chmod +x zenfi.py

printf "###############################################\n#  All done! Now you can run ZenFi with\n#   sudo python zenfi.py -i wlan0 -K\n#\n#  To update, run\n#   (git pull)\n###############################################\n"