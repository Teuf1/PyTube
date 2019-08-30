#!/bin/bash
#-----colors-----#
red='\033[1;31m'
green='\033[1;32m'
blue='\033[1;36m'
yellow='\033[1;33m'
#-----main-----#
echo "
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
echo "${yellow}[✔] Checking directories...";
if [ -d "$INSTALL_DIR" ];
then
    echo "${blue}[◉] A directory PyTube was found! Do you want to replace it? [Y/n]:" ;
    read usr
    if [ $usr == "Y" ];
    then
      rm -rf "$INSTALL_DIR"
    else
        exit
    fi
fi

echo "${yellow}[✔] Installing ...";
echo "";
apt install python2
python2 -m pip install --upgrade youtube_dl;
git clone https://github.com/Manisso/PyTube.git $INSTALL_DIR;
echo -e "#!/bin/bash\n python2 $INSTALL_DIR/pytube.py"  > pytube;
chmod +x pytube;
mv pytube $PREFIX/bin/;
cd
rm -rf PyTube;

if [ -d "$INSTALL_DIR" ];
then
    echo "";
    echo "${green}[✔]Tool istalled with success![✔]";
    echo "";
    echo "${green}[✔]=====================================================[✔]";
    echo "${green}[✔] All is done!! You can execute tool by typing pytube [✔]";
    echo "${green}[✔]=====================================================[✔]";
    echo "";
else
    echo "${red}[✘] Installation failed! [✘]";
    exit
fi
