# How to build TinyTeX from sketch

## 配置网络

```bash
sudo vi /etc/sysconfig/network-scripts/ifcfg-enp0s3
sudo vi /etc/sysconfig/network-scripts/ifcfg-enp0s8
```

自动获取IP，只需将 ONBOOT=no 改为 ONBOOT=yes，然后重启网络

```bash
sudo service network restart
```

然后更新 yum  

```bash
sudo yum update 
sudo yum groupinstall "Development Tools" 
```

删除之前的内核

```bash
rpm -qa | grep kernel
sudo yum remove kernel-3.10.0-693.el7.x86_64
```

配置 VBox 的网卡2的网络为 仅主机(Host-Only)网络,网卡1的配置不变 

```bash
sudo systemctl stop firewalld # 关闭防火墙 
sudo systemctl disable firewalld.service # 禁止启动
```

查看防火墙和 sshd 状态

```bash
sudo firewall-cmd --state #查看默认防火墙状态
sudo systemctl status sshd 
```

虚拟机能 ping 通主机，主机不能 ping 通虚拟机，原因是 VirtualBox Host-Only Network #3 与虚拟机 ip 不在同一网段，修改 VirtualBox Host-Only Network #3 的配置为自动获取

- 安装 R

```bash
sudo yum install epel-release
sudo yum install -y R
```

R 包默认存放目录添加写权限，其他 R 包 放 site-library

```bash
sudo chmod -R +777 /usr/lib64/R/library
```

安装一些依赖

```bash
sudo yum install -y libcurl-devel openssl-devel libssh2-devel \
   libgit2-devel libxml2-devel \
   ImageMagick-c++-devel librsvg2-devel tcl-devel tk-devel \
   readline-devel v8-314-devel libXmu libXmu-devel \
   mesa-libGLU mesa-libGLU-devel libicu-devel
```  

- 安装 R 包

```r
install.packages(c(
   'curl', 'openssl', 'git2r', 'xml2', 
   'devtools', 'ggplot2', 'magick', 'rsvg', 'bookdown'
))
```

- 安装 zsh

```bash
sudo yum update && sudo yum -y install zsh curl wget deltarpm
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```


查看文件夹大小

```bash
du -h -d 1
```

- 安装 RStudio Server

```bash
wget https://download2.rstudio.org/rstudio-server-rhel-1.1.456-x86_64.rpm
sudo yum install rstudio-server-rhel-1.1.456-x86_64.rpm
```

- 配置 rstudio

如果是自己编译安装 R，就需要手动这一步

```bash
sudo vi /etc/rstudio/rserver.conf 
# 添加一行 
rsession-which-r=/usr/local/bin/R
```

- rstudio 手册
http://docs.rstudio.com/ide/server-pro/

- 可用的字体

CentOS 下 repo 中常见字体名字

```bash
dejavu-fonts-common
dejavu-sans-fonts
dejavu-sans-mono-fonts
dejavu-serif-fonts

fontawesome-fonts
fontawesome-fonts-web

dejavu-lgc-sans-fonts
dejavu-lgc-sans-mono-fonts
dejavu-lgc-serif-fonts

google-noto-cjk-fonts
google-noto-emoji-fonts
google-noto-fonts-common
google-noto-sans-cjk-fonts
google-noto-sans-fonts
google-noto-sans-simplified-chinese-fonts

stix-fonts
stix-math-fonts
wqy-zenhei-fonts
```

## 编译 R

- 下载 R 源码包

```bash
wget https://mirrors.tuna.tsinghua.edu.cn/CRAN/src/base/R-3/R-3.5.1.tar.gz
tar -xzvf R-3.5.1.tar.gz
```

```bash
tlmgr install inconsolata ctex l3kernel l3packages \
   ms zapfding fancyvrb booktabs
```

配置 R 的命令

```bash
./configure --enable-R-shlib --enable-byte-compiled-packages \
  --enable-BLAS-shlib --enable-memory-profiling 

make 
sudo make install
```
- 安装 sf

```bash
sudo yum install netcdf-devel hdf5-devel armadillo-devel \
    freexl-devel unixODBC-devel geos-devel \
    gdal-devel proj-devel proj-epsg proj-nad \
    geos-devel udunits2-devel fftw fftw-devel gcc-objc gcc-objc++
```

- 配置 rgdal

```bash
./configure --with-armadillo=yes
make 
sudo make install
```

安装 Git

```bash
wget https://centos7.iuscommunity.org/ius-release.rpm
sudo yum localinstall ius-release
sudo yum update && sudo yum install git2u
```

安装 JAGS

```bash
wget http://download.opensuse.org/repositories/home:/cornell_vrdc/CentOS_7/home:cornell_vrdc.repo
sudo yum install jags4 jags4-devel
```

```r
install.packages('rjags')
```

安装 texlive/tinytex

从这里安装
https://github.com/FluidityProject/yum-centos7-texlive


```
sudo yum install perl-Digest-MD5
```

卸载 texlive

```
sudo yum erase texlive texlive-\*
```


安装字体

```
levien-inconsolata-fonts texlive-inconsolata texlive-fandol texlive-ctex

tlmgr install ctex ms ulem xecjk environ trimspaces \
  zhnumber fandol xltxtra realscripts
```
