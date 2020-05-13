deps() {
    apt-get install libsdl2-dev
}

build() {
    cd subrepos/tvcon/tvcon
    make
}

install() {
}

run() {
}
