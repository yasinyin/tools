# ubuntu_dhcp2static
ubuntu_dhcp2static

现有多台机器，ip都是通过DHCP获取的，怎样将一个ip段的ip分配给这几台机器？

使用方法：

远程连接到多台机器，分别克隆ubuntu_dhcp2static

根据需要修改目录下interfaces.bak和dhcp2static.sh文件

执行：
bash dhcp2static.sh

输入想要分配的ip地址

查看执行结果
