对于树莓派的ubuntu
![example1](https://assets.ubuntu.com/v1/c037fd75-ubuntu-logo.png)

### 32位（armhf）:
| 系统 | 名称 | 构建者 | 架构 | 适用版本 | 链接 |
|-----|------|-------|-----|---------|--------|
| ubuntu | ubuntu-18.04-preinstall-server-armhf-rpi3 | Ryan Finnie | armhf | rpi3b | [链接](https://www.finnie.org/software/raspberrypi/ubuntu-rpi3/ubuntu-18.04-preinstalled-server-armhf+raspi3.img.xz) |
| ubuntu | ubuntu-18.04-preinstall-server-armhf-rpi2 | ubuntu官方镜像 | armhf | rpi2b | [链接](https://mirrors.tuna.tsinghua.edu.cn/ubuntu-cdimage/ubuntu/releases/18.04/release/ubuntu-18.04-preinstalled-server-armhf+raspi2.img.xz) |

### 64位（arm64）：
| 系统 | 名称 | 构建者 | 架构 | 适用版本 | 百度网盘链接 | 直链下载（github） |
|-----|-----|-------|------|---------|------------|-----------------|
| ubuntu | ubuntu-18.04-minimal-aarch64-stable-chainsx | chainsx | arm64 | rpi3b/rpi3b+ | [链接](https://pan.baidu.com/s/1aNR0U-X6C6dbBbMyy0W6lw) | [链接](https://github.com/chainsx/ubuntu64-rpi/releases/download/ubuntu-18.04-arm64/ubuntu-18.04-server-aarch64-rpi3b-rpi3b-plus-stable-20180505-chainsx.img.xz) |
| ubuntu | ubuntu-18.04-minimal-aarch64-devel-chainsx | chainsx | arm64 | rpi3b/rpi3b+ | [链接](https://pan.baidu.com/s/1GQtcBIOKGYW1KFZ3QJbyXQ) | [链接](https://github.com/chainsx/ubuntu64-rpi/releases/download/ubuntu-18.04-arm64/cxcore-ubuntu-18.04-minimal-aarch64-raspi3b-raspi3b-plus-devel-20180630-chainsx.img.xz) |


如果使用64位lite系统请选择第三个或第四个。

默认用户：`ubuntu`

默认用户密码：`ubuntu`

默认开启ssh

# 安装
### 在windows上使用win32diskimager写入
### 在linux或mac上直接使用dd命令刷入
### ** 通过树莓派现有的系统刷系统 **
#### example1 : `zcat ubuntu.img.gz | sudo dd bs=4M of=/dev/mmcblk0`
#### example2 : 
```
unxz --verbose ubuntu.img.xz
sudo ddrescue -D -d --force ubuntu.img /dev/mmcblk0
```

### ！！！以上说明仅适用于chainsx构建的系统。

# 支持u盘/硬盘启动

## 附
### 在arm64开发者预览版中的boot分区的files文件夹提供了已经编译好的64位u-boot，内核设备树，以及uefi启动文件等，如果不需要可以删除。
