
![example1](https://assets.ubuntu.com/v1/c037fd75-ubuntu-logo.png)

### 64位（arm64）：
| 系统 | 名称 | 构建者 | 架构 | 适用版本 | 百度网盘链接 | 直链下载（github） |
|-----|-----|-------|------|---------|------------|-----------------|
| ubuntu lite版 | ubuntu-18.04-minimal-aarch64-linux-4.14-stable-20180727-chainsx | chainsx | arm64 | rpi3b/rpi3b+ | [链接](https://pan.baidu.com/s/1PzL6a2oBCEj434QWDHeI5w) | [链接](https://github.com/chainsx/ubuntu64-rpi/releases/download/ubuntu-18.04-arm64/cxcore-ubuntu-18.04-minimal-aarch64-raspi3b-raspi3b-plus-stable-20180727-chainsx.img.xz) |
| ubuntu 桌面版 | ubuntu-18.04-lxqt-aarch64-linux-4.14-devel-20180812-chainsx | chainsx | arm64 | rpi3b/rpi3b+ | [链接](https://pan.baidu.com/s/1m0psi8l6txYtutoJv9nAMQ) |  |


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

# [捐赠](https://github.com/chainsx/ubuntu64-rpi/blob/ubuntu-18.04-arm64/donation/README.md)
