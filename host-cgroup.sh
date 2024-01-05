#create a new directory for a cgroup
sudo mkdir -p /sys/fs/cgroup/memory/553cgroup

#set memory limit to 100k
sudo bash -c "echo 100000 > /sys/fs/cgroup/memory/553cgroup/memory.limit_in_bytes"

#add our pid to this cgroup
pid=$(sudo ps fa | grep 'S+' | grep '/bin/sh'| awk '{print $1}' | sed -n 2p)
sudo bash -c "echo $pid > /sys/fs/cgroup/memory/553cgroup/tasks"


