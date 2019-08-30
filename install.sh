#!/bin/bash
clear
echo "
███╗   ███╗ █████╗ ███╗   ██╗██╗███████╗███████╗ ██████╗
████╗ ████║██╔══██╗████╗  ██║██║██╔════╝██╔════╝██╔═══██╗
██╔████╔██║███████║██╔██╗ ██║██║███████╗███████╗██║   ██║
██║╚██╔╝██║██╔══██║██║╚██╗██║██║╚════██║╚════██║██║   ██║
██║ ╚═╝ ██║██║  ██║██║ ╚████║██║███████║███████║╚██████╔╝
╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝╚══════╝╚══════╝ ╚═════╝
▀▀█▀▀ █▀▀█ █▀▀█ █   █▀▀ ~ Tools Instaler By Ⓜ Ⓐ Ⓝ Ⓘ Ⓢ Ⓢ Ⓞ  ☪ ~
  █   █  █ █  █ █   ▀▀█
  ▀   ▀▀▀▀ ▀▀▀▀ ▀▀▀ ▀▀▀

";

INSTALL_DIR="/data/data/com.termux/files/usr/share/doc/PyTube"
echo "[✔] Checking directories...";
if [ -d "$INSTALL_DIR" ];
then
    echo "[◉] A directory PyTube was found! Do you want to replace it? [Y/n]:" ;
    read usr
    if [ $usr == "Y" ];
    then
      rm -rf "$INSTALL_DIR"
    else
        exit
    fi
fi

echo "[✔] Installing ...";
echo "";
apt install python2
python2 -m pip install --upgrade youtube_dl
git clone https://github.com/Manisso/PyTube.git $INSTALL_DIR;
echo -e "#!/bin/bash \n python2 $INSTALL_DIR/pytube.py"  > pytube;
chmod +x pytube;
mv pytube $PREFIX/bin/;


if [ -d "$INSTALL_DIR" ];
then
    echo "";
    echo "[✔]Tool istalled with success![✔]";
    echo "";
    echo "[✔]====================================================================[✔]";
    echo "[✔] ✔✔✔  All is done!! You can execute tool by typing pytube   !   ✔✔✔ [✔]";
    echo "[✔]====================================================================[✔]";
    echo "";
else
    echo "[✘] Installation faled![✘] ";
    exit
fi
