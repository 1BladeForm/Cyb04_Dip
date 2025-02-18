#!/bin/bash

RED='\e[31m'
GREEN='\e[32m'
BLUE='\e[34m'
RESET='\e[0m'

echo -e "$BLUE Welcome to install Volatility3 $RESET"
sudo apt-get update >/dev/null

echo -e "$BLUE Check and install dependency $RESET"

if dpkg -l python3-full >/dev/null
then echo -e "$GREEN Already installed python3-full $RESET"
else echo -e "$BLUE Install python3-full $RESET" && sudo apt-get install -y pyton3-full
fi

if dpkg -l python3-pip >/dev/null
then echo -e "$GREEN Already installed python3-pip $RESET"
else echo -e "$BLUE Install python3-pip $RESET" && sudo apt-get install -y pyton3-pip
fi

if dpkg -l wget >/dev/null
then echo -e "$GREEN Already installed wget $RESET"
else echo -e "$BLUE Install wget $RESET" && sudo apt-get install -y wget
fi

if dpkg -l git >/dev/null
then echo -e "$GREEN Already installed git $RESET"
else echo -e "$BLUE Install git $RESET" && sudo apt-get install -y git
fi

if dpkg -l golang-go >/dev/null
then echo -e "$GREEN Already installed golang-go $RESET"
else echo -e "$BLUE Install golang-go $RESET" && sudo apt-get install -y golang-go
fi

cd

echo -e "$GREEN Download the latest release of avml $RESET"

wget https://github.com/microsoft/avml/releases/download/v0.14.0/avml

echo -e "$GREEN Make the file executable $RESET"

sudo chmod +x avml


echo -e "$GREEN Move the executable to a directory in /usr/local/bin $RESET"

sudo mv avml /usr/local/bin/

if avml --help >/dev/null
then echo -e "$GREEN AVML is installed $RESET"
else echo -e "$RED AVML is not installed $RESET" && exit 0
fi

echo -e "$GREEN Create memory dump $RESET"

sudo avml ~/memory.dmp
sudo chown $USER:$USER memory.dmp
sudo chmod 755 memory.dmp


echo -e "$GREEN Install Volatility3 $RESET"

git clone https://github.com/volatilityfoundation/volatility3.git
cd volatility3

echo -e "$GREEN Install Volatility3 requirements $RESET"


pip3 install -r requirements-minimal.txt
pip3 install -r requirements.txt

echo -e "$GREEN Install the corresponding debug symbols $RESET"

release=$(lsb_release -cs)

sudo tee /etc/apt/sources.list.d/ddebs.list <<EOF

deb http://ddebs.ubuntu.com $release main restricted universe multiverse
deb http://ddebs.ubuntu.com $release-updates main restricted universe multiverse
deb http://ddebs.ubuntu.com $release-proposed main restricted universe multiverse


EOF

wget -O - http://ddebs.ubuntu.com/dbgsym-release-key.asc | sudo apt-key add -


sudo apt update
sudo apt install linux-image-$(uname -r)-dbgsym

# Debug kernel is at: /usr/lib/debug/boot/vmlinux-$(uname -r)
echo -e "$GREEN Instal dwarf2json $RESET"
cd 
git clone https://github.com/volatilityfoundation/dwarf2json.git
cd dwarf2json
go build
sudo cp dwarf2json /usr/local/bin/
if dwarf2json --help >/dev/null
then echo -e "$GREEN dwarf2json is installed $RESET"
else echo -e "$RED dwarf2json is not installed $RESET" && exit 0
fi


cd /usr/lib/debug/boot/
chmod 755 vmlinux-$(uname -r)
chown $USER:$USER vmlinux-$(uname -r)
sudo mkdir ~/volatility3/volatility3/symbols/linux
sudo dwarf2json linux  --elf /usr/lib/debug/boot/vmlinux-$(uname -r) --system-map /boot/System.map-$(uname -r) > ~/Ubuntu-$(uname -r).json
sudo cp ~/Ubuntu-$(uname -r).json ~/volatility3/volatility3/symbols/linux/
cd ~/volatility3

PS3='Select module for volatility3: '
sys=("Lsof" "Pstree" "Bash" "Check_creds" "Exit")
select fav in "${sys[@]}"; do
    case $fav in
        "Lsof")
            echo -e  "$GREEN Lists open files for each processes $RESET"
            sudo python3 vol.py -f ~/memory.dmp linux.lsof.Lsof
            break
            ;;
         "Pstree")
            echo -e  "$GREEN Plugin for listing processes in a tree based on their parent process ID $RESET"
            sudo python3 vol.py -f ~/memory.dmp linux.pstree.PsTree
            break
            ;;
        "Bash")
            echo -e  "$GREEN Recovers bash command history from memory $RESET"
            sudo python3 vol.py -f ~/memory.dmp linux.bash.Bash
            break
            ;;
        "Check_creds")
            echo -e  "$GREEN Lists open files for each processes $RESET"
            sudo python3 vol.py -f ~/memory.dmp linux.check_creds.Check_creds
            break
            ;;
        "Exit")
            echo -e "$RED User requested exit $RESET"
            exit 0
            ;;
             *) echo -e "$RED invalid option $REPLY $RESET";;
    esac
done