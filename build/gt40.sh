deps() {
    apt-get install libsdl2-dev
}

build() {
    cd subrepos/simh
    make pdp11
}

install() {
}

run() {
}
