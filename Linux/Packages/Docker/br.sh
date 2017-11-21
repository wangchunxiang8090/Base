# 安装bridge命令
rpm -qa |grep -q bridge-utils || yum -y install bridge-utils
# 网桥名称
br_name=br0
# 静态IP地址
IP=10.2.2.207/24
# 网卡名称
network_name=eno16777736
# 添加网桥
brctl addbr $br_name
# 给网桥设置IP
ip addr add $IP dev $br_name
# 删除已存在的eth0网卡配置
ip addr del $IP dev $network_name
# 激活网桥
ip link set $br_name up
# 添加eth0到网桥
brctl addif $br_name $network_name
