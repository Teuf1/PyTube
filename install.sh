#!/bin/bash
#-----colors-----#
red='\033[1;31m'
green='\033[1;32m'
blue='\033[1;36m'
yellow='\033[1;33m'
#-----main-----#
clear
echo -e "${blue}
███╗   ███╗ █████╗ ███╗   ██╗██╗███████╗███████╗ ██████╗
████╗ ████║██╔══██╗████╗  ██║██║██╔════╝██╔════╝██╔═══██╗
██╔████╔██║███████║██╔██╗ ██║██║███████╗███████╗██║   ██║
██║╚██╔╝██║██╔══██║██║╚██╗██║██║╚════██║╚════██║██║   ██║
██║ ╚═╝ ██║██║  ██║██║ ╚████║██║███████║███████║╚██████╔╝
╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝╚══════╝╚══════╝ ╚═════╝
▀▀█▀▀ █▀▀█ █▀▀█ █   █▀▀ ~ Tools Instaler By Ⓜ Ⓐ Ⓝ Ⓘ Ⓢ Ⓢ Ⓞ  ☪ ~
  █ . █  █ █  █  █   ▀▀█
  ▀  .▀▀▀▀ ▀▀▀▀ ▀▀▀ ▀▀▀

";

INSTALL_DIR="/data/data/com.termux/files/usr/share/doc/PyTube"
echo -e "${yellow}[✔] Checking directories...";
if [ -d "$INSTALL_DIR" ];
then
    echo -e "${blue}[◉] A directory PyTube was found! Do you want to replace it? [Y/n]:" ;
    read usr
    if [ $usr == "Y" ];
    then
      rm -rf "$INSTALL_DIR"
    else
        exit
    fi
fi

echo -e "${yellow}[✔] Installing ...";
echo "";
apt install python
python3 -m pip install --upgrade youtube_dl;
git clone https://github.com/tonmoy-islam/PyTube $INSTALL_DIR;
echo -e "#!/bin/bash\n python3 $INSTALL_DIR/pytube.py"  > pytube;
chmod +x pytube;
mv pytube $PREFIX/bin/;
cd /data/data/com.termux/files/home/
rm -rf PyTube;

if [ -d "$INSTALL_DIR" ];
then
    echo "";
    echo -e "${green}[✔]Tool istalled with success![✔]";
    echo "";
    echo -e "${green}[✔]=====================================================[✔]";
    echo -e "${green}[✔] All is done!! You can execute tool by typing pytube [✔]";
    echo -e "${green}[✔]=====================================================[✔]";
    echo "";
else
    echo -e "${red}[✘] Installation failed! [✘]";
    exit
fi
