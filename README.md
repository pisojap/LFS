# LFS Linux From Scratch
    
    #Install required programs for compilation
    sudo pacman -S bash binutils bison bzip2 coreutils diffutils findutils gawk gcc glibc grep gzip m4 make patch perl python sed tar texinfo xz

    #create lfs user and group
    groupadd lfs
    sudo groupadd lfs
    useradd -s /bin/bash -g lfs -m -k /dev/null lfs
    sudo useradd -s /bin/bash -g lfs -m -k /dev/null lfs
    sudo passwd lfs
