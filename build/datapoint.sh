deps() {
    apt-get install libsdl2-dev
}

build() {
    cd subrepos/vt05
    make dp3300
}

install() {
}

run() {
}
