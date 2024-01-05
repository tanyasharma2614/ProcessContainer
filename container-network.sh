
#add ip address to veth peer veth1 for the container
ip addr add 10.0.0.5/24 dev veth1 

#sometimes, the link is down by default so we want to ensure it can send and receive packets
ip link set dev veth1 up



