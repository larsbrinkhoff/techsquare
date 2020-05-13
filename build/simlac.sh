deps() {
    apt-get install mono-complete nuget libsdl2-dev
}

build() {
    cd subrepos/simlac
    nuget restore
    xbuild /p:TargetFrameworkVersion=v4.5 imlac.sln
}

install() {
}

run() {
}

"$1"
