
#mount the filesystem
sudo mount -t proc proc alpine/proc

#isolate the container
sudo chroot alpine /bin/sh
#we will be dropped into a new shell


