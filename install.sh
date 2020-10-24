printf '\e[34m Download sqlmap-easy...\n\e[1;32m'
pkg update -y && pkg upgrade
pkg install toilet -y
chmod +x sql
rm -rf ~/../usr/bin/sql
cp -r sql ~/../usr/bin/
cd
rm -rf sqlmap-Easy
gem install toilet
printf '\e[33m *Done to start enter sql\n'
