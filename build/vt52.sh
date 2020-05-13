deps() {
    apt-get install libsdl2-dev
}

build() {
    cd subrepos/vt05
    make vt52
}

install() {
}

run() {
}
