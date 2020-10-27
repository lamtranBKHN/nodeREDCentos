yum install gcc
VERSION=v12.19.0
DISTRO=linux-x64
rm -rf /usr/local/lib/nodejs
mkdir -p /usr/local/lib/nodejs
cp node-v12.19.0-linux-x64.tar.xz /usr/local/lib/nodejs
tar -xJvf node-$VERSION-$DISTRO.tar.xz -C /usr/local/lib/nodejs 
export PATH=/usr/local/lib/nodejs/node-$VERSION-$DISTRO/bin:$PATH

u="$USER"
nodeRED="/home/$u/"
rm -rf "/home/$u/.node-red"
rm -rf /usr/local/lib/node_modules
cp -r .node-red "/home/$u/"
cp -r node_modules /usr/local/lib/
