# LFS Linux From Scratch
1. Start    
    #Install required programs for compilation
    sudo pacman -S bash binutils bison bzip2 coreutils diffutils findutils gawk gcc glibc grep gzip m4 make patch perl python sed tar texinfo xz
2.Create User in host system
    #create lfs user and group
    groupadd lfs
    sudo groupadd lfs
    useradd -s /bin/bash -g lfs -m -k /dev/null lfs
    sudo useradd -s /bin/bash -g lfs -m -k /dev/null lfs
    sudo passwd lfs
