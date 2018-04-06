#!bash/bin
#Script instalador de SMLoadr
#Created by Juni0r2019
echo "Actualizando Paquetes..."
pkg update
pkg upgrade
echo "Instalanto Node.js y Git..."
apt-get -y install nodejs git coreutils
echo "Clonando SMLoadr..."
git clone https://git.teknik.io/SMLoadrDev/SMLoadr.git
echo "Configurando instalacion..."
cd SMLoadr
npm install
sed -i 's/linux/android/' node_modules/openurl/openurl.js
mkdir ~/storage/shared/SMLoadr
ln -s ~/storage/shared/SMLoadr DOWNLOADS
echo "Para iniciar poner node SMLoadr.js en la terminal"
echo "La capeta de musica estara en la memoria interna -> SMLoadr, separada por artista y album"

