#let us start by downloading the alpine fs and setting it up

#make a directory called alpine
mkdir alpine

cd alpine

#download the minirootfs
curl -o alpine.tar.gz https://dl-cdn.alpinelinux.org/alpine/v3.17/\
releases/x86_64/alpine-minirootfs-3.17.3-x86_64.tar.gz

#extract it
tar xvf alpine.tar.gz

#delete the tar file 
rm alpine.tar.gz

cd ..

#start a new namespace with (mount+pid+net)
sudo unshare --mount-proc --net --pid --fork 
