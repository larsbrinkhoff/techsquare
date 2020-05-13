deps() {
    apt-get install fossil
}

build() {
    mkdir subrepos/cadr
    cd subrepos/cadr

    fossil clone https://tumbleweed.nu/r/usim usim.fossil
    mkdir usim
    cd usim
    fossil open ../usim.fossil
    cd ..

    fossil clone https://tumbleweed.nu/r/chaos chaos.fossil
    mkdir chaos
    cd chaos
    fossil open ../chaos.fossil
    cd ..

    fossil clone https://tumbleweed.nu/r/sys78 sys78.fossil
    fossil clone https://tumbleweed.nu/r/usite usite.fossil
    mkdir sys78
    cd sys78
    fossil open ../sys78.fossil

    mkdir site
    cd site
    fossil open --nested ../../usite.fossil
    cd ../..

    cd usim
    make CHAOS=../chaos
    wget --no-check-certificate https://tumbleweed.nu/r/sys78/uv/disk.img.gz
    gunzip disk.img.gz
    wget --no-check-certificate https://tumbleweed.nu/r/sys78/uv/usim.ini
}

install() {
}

run() {
}
