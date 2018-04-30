对于树莓派的ubuntu

| 系统 | 名称 | 构建者 | 架构 | 适用版本 | 下载链接 |
|-----|------|-------|-----|---------|--------|
| ubuntu | ubuntu-18.04-preinstall-server-armhf-rpi3 | Ryan Finnie | armhf | rpi3b | [链接](https://www.finnie.org/software/raspberrypi/ubuntu-rpi3/ubuntu-18.04-preinstalled-server-armhf+raspi3.img.xz) |
| ubuntu | ubuntu-18.04-preinstall-server-armhf-rpi2 | ubuntu官方镜像 | armhf | rpi2b | [链接](https://mirrors.tuna.tsinghua.edu.cn/ubuntu-cdimage/ubuntu/releases/18.04/release/ubuntu-18.04-preinstalled-server-armhf+raspi2.img.xz) |
| * ubuntu | ubuntu-18.04-core-aarch64-devel-chainsx| chainsx | arm64 | rpi3b/rpi3b+ | [链接](https://pan.baidu.com/s/1l3YyWU6ysYjO00B2kYnEVw) |

如果使用64位系统请选择第三个

默认用户：`ubuntu`

默认用户密码：`ubuntu`

默认开启ssh

# 安装
### 在windows上使用win32imageflash
### 在linux上直接使用dd命令刷入
### ** 通过树莓派现有的系统刷系统 **
#### example1 : `zcat ubuntu.img.gz | sudo dd bs=4M of=/dev/mmcblk0`
#### example2 : 
```
gunzip ubuntu.img.gz
sudo ddrescue -D -d --force ubuntu.img /dev/mmcblk0
```

### ！！！以上说明仅适用于chainsx构建的系统。

# 支持u盘/硬盘启动
