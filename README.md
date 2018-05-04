# RaspberryPi3-ubuntu-18.04-aarch64    
***************
######## 插播一段广告。。。。。
###### [ubuntu-16.04-arm64](https://github.com/chainsx/ubuntu64-rpi/tree/ubuntu-16.04.3-arm64)
##### [最新版mainline(4.16)内核（适用于所有树莓派3系统）](https://github.com/chainsx/firmware64-rpi)
###### [64位centos戳这里(做服务器建议使用此版本)](https://github.com/chainsx/centos64-rpi)
###### [64位debian(非pi64)](https://github.com/UMRnInside/RPi-arm64)
***************

# [帮助文档](https://github.com/chainsx/ubuntu64-rpi/wiki)
这里提供一些问题的解决方案

***************
## 使用说明

![example1](https://assets.ubuntu.com/v1/c037fd75-ubuntu-logo.png)


* 本系统是直接基于ubuntu-Base-18.04-arm64构建的根目录， **非移植版** ，所以稳定性有提升。
* `apt`的源默认为清华软件源
* **ubuntu官方为bcm2837给了支持**，只不过是以raspi2命名，原因是晚期的raspi2是使用的bcm2837芯片。
* 默认用户：`ubuntu`      密码：`ubuntu`
* 默认开启ssh，不想要的自己去关。
* **第一次开机时会自动拓展根目录，然后会自动重启，重启后会配置系统，请耐心等待**。
* 默认使用清华源，**如果你的树莓派无法解析清华源的地址**(apt时提示404或者卡住不动)，看[这里](https://github.com/chainsx/ubuntu64-rpi/blob/ubuntu-16.04.3-arm64/Documentation/dns-setting.md)
* 集成了`raspi-config`,`chainsx-tools`系统集成管理工具，使用方法：
```
sudo raspi-config

sudo chainsx-tools
```

## 关于内核

- [X] wifi
- [X] bluetooth(蓝牙使用前需要配置)
- [X] GPIO


|  联系方式   |           |
|-----------|------------|
|QQ|1396219808(CX_dandelion)|
|E-mail|chainsx@outlook.com i@chainsx.cn|

**********************

## 下载地址：

### 百度网盘(Baidu Netdisk)

| 版本 | 下载链接 |
|--------|--------|
| ubuntu-18.04-developer-edition(ubuntu-18.04合集)  | [链接](https://github.com/chainsx/ubuntu64-rpi/blob/ubuntu-18.04-arm64/Documentation/bionic-release.md)|
| ubuntu-lxqt-16.04.4-aarch64-beta(带桌面版支持3b+) | [链接](https://github.com/chainsx/ubuntu64-rpi/blob/ubuntu-16.04.3-arm64/Documentation/about-desktop-version.md) |

##### 如果百度云限速的问题你无法解决的话（至少是要下载1h以上的话），请联系我，我会给你准备腾讯云计算对象储存高速下载通道。

## 特别鸣谢
##### [UMRnInside](https://github.com/UMRnInside)（提供了开机自动扩容方法)
##### [树莓派基金会](https://www.raspberrypi.org) (提供了开机自动扩容脚本)
##### [Armbian](https://armbian.com) (提供了chainsx-tools源码)
##### @ 束发少年 (提供论坛支持)
 
## 欢迎加入树莓派64位系统交流群，QQ群号码：697381661
## 论坛支持https://raspberrypi.party
### 感谢 @束发少年 的论坛支持
