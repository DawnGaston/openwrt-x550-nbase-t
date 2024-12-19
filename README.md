# openwrt-x550-nbase-t

让intel x550在新的驱动下可以协商出2.5G和5G

还没详细测试，慎用

======================================================================
https://downloadmirror.intel.com/732258/readme.txt

By default, devices based on the Intel(R) Ethernet Controller x550 do not
advertise 2.5 Gbps or 5 Gbps. To have your device advertise these speeds, use
the following:

\# ethtool -s <ethX> advertise N

Where N is a combination of the following.  
100baseTFull   0x008  
1000baseTFull  0x020  
2500baseTFull  0x800000000000  
5000baseTFull  0x1000000000000  
10000baseTFull 0x1000  

For example, to turn on all modes:  
\# ethtool -s <ethX> advertise 0x1800000001028
