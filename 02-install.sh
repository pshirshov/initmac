#!/bin/bash -xe

brew install \
    autojump \
    awscli \
    cloc \
    cmake \
    coreutils \
    git \
    gnupg \
    go \
    graphviz \
    htop \
    imagemagick \
    ipcalc \
    jq \
    midnight-commander \
    mono \
    ncdu \
    nuget \
    nmap \
    p7zip \
    ripgrep \
    tmux \
    tig \
    typescript \
    npm \
    yarn \
    mas \
    duti

brew cask install \
    alfred \
    android-platform-tools \
    bitwarden \
    docker \
    dotnet-sdk \
    firefox \
    font-fira-code \
    gimp \
    iina \
    iterm2 \
    itsycal \
    jetbrains-toolbox \
    keepassxc \
    libreoffice \
    mactex-no-gui \
    openineditor-lite \
    openinterminal-lite \
    protonvpn \
    qbittorrent \
    skype \
    slack \
    synthesia \
    teamviewer \
    telegram \
    telegram-desktop \
    tiles \
    the-unarchiver \
    visual-studio-code \
    vlc

echo INGORED: brew cask install \
    firefox-developer-edition \
    sloth \
    xnviewmp \
    yacreader \
    vivaldi \
    spectacle \
    nextcloud \
    skim \
    transmission

brew cask install \
    adoptopenjdk/openjdk/adoptopenjdk8 \
    adoptopenjdk/openjdk/adoptopenjdk11 \
    jprofiler \
    visualvm \
    yourkit-java-profiler

brew install \
    ammonite-repl \
    coursier \
    jabba \
    jenv \
    maven \
    sbt \
    scala

