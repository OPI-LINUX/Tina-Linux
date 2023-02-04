
# Tina-Linux
Tina-Linux for F133


### Ubuntu18.04 environment 
  $ sudo apt-get install build-essential subversion git-core libncurses5-dev zlib1g-dev gawk flex quilt libssl-dev xsltproc libxml-parser-perl mercurial bzr ecj cvs unzip lib32z1 lib32z1-dev lib32stdc++6 libstdc++6 libmpc-dev libgmp-dev -y

### SDK download from GitHub
``` sh
  $ git clone  https://github.com/OPI-LINUX/Tina-Linux.git
  $ cd Tina-Linux/
  $ git submodule update --init --recursive

  // download the static file
  https://drive.google.com/drive/folders/1jq6Bj41UkPgvr_hUXk0IBb8aLJZzujV5?usp=share_link
  $ cp -a prebuilt.tar.gz .
  $ tar xzvf prebuilt.tar.gz
  $ cp -a dl.tar .
  $ tar xvf dl.tar
  $ cp -a riscv64-linux-x86_64-20200528.tar.xz ./lichee/brandy-2.0/tools/toolchain/
  $ cp -a gcc-linaro-7.2.1-2017.11-x86_64_arm-linux-gnueabi.tar.xz -P ./lichee/brandy-2.0/tools/toolchain/
  
```

### Compile
  $ source build/envsetup.sh
  $ lunch
``` 
  
  $ make
  $ mboot
  $ pack
  
  Tina-Linux/out/XXX/XXX.img
  
  ``` 
  
### Flash to TF-Card

just used [phoenixcard for phoenixcard4.2.8.zip) 

more info : https://orangepi.org
  
