deps() {
    apt-get install libgtk-3-dev
}

build() {
    cd subrepos/tek4010
    rm tek4010
    make
}

install() {
}

run() {
}
