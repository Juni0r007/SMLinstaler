#!bash/bin
#Script instalador de SMLoadr
#Created by Juni0r2019
echo "Actualizando Paquetes...\n"
pkg update
pkg upgrade
echo "Instalanto Node.js y Git...\n"
apt-get -y install nodejs git coreutils
echo "Clonando SMLoadr...\n"
git clone https://git.teknik.io/SMLoadrDev/SMLoadr.git
echo "Configurando instalacion...\n"
mv SMLoadr/{package.json,SMLoadr.js} $HOME
rm -Rf SMLoadr
npm install
sed -i 's/linux/android/' node_modules/openurl/openurl.js
mkdir ~/storage/shared/SMLoadr
ln -s ~/storage/shared/SMLoadr DOWNLOADS
echo "Para iniciar poner node SMLoadr.js en la terminal\n"
echo "La capeta de musica estara en la memoria interna -> SMLoadr, separada por artista y album\n"

