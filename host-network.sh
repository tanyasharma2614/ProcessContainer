#creating a veth pair between container and host
pid=$(sudo lsns -t net | grep 'unshare' | awk '{print $4}')
sudo ip link add veth1 netns $pid type veth peer veth0 netns 1

#adding the ip address to the host veth peer
sudo ip addr add 10.0.0.9/24 dev veth0 

sudo ip link set dev veth0 up










