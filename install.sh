printf '\e[32m Download sqlmap-easy...\n'
pkg update -y && pkg upgrade
pkg install toilet -y
gem install toilet
chmod +x sql
rm ~/../user/bin/sql
cp sql ~/../user/bin/sql
cd
rm -rf sqlmap-Easy
printf '\e[33m *Done to start enter sql\n'
