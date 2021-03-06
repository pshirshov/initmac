#!/bin/bash -xe

brew install \
    autojump \
    awscli \
    aha \
    cloc \
    cmake \
    coreutils \
    git \
    gnupg \
    gnu-sed \
    go \
    graphviz \
    highlight \
    htop \
    imagemagick \
    ipcalc \
    jq \
    mackup \
    midnight-commander \
    mono \
    ncdu \
    nuget \
    nmap \
    p7zip \
    pygments \
    rename \
    tmux \
    tig \
    typescript \
    npm \
    yarn \
    mas \
    duti \
    wait_on

# nice rust tools
brew install \
    bat \
    broot \
    dust \
    exa \
    fd \
    hyperfine \
    mdcat \
    ripgrep \
    sd \
    starship \
    tokei \
    tealdeer \
    topgrade \
    websocat

# More rust tools:
# fselect runiq

brew cask install \
    appcleaner \
    android-platform-tools \
    bitwarden \
    cheatsheet \
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
    qbittorrent \
    skype \
    skim \
    slack \
    teamviewer \
    telegram \
    telegram-desktop \
    tiles \
    the-unarchiver \
    tunnelblick \
    visual-studio-code \
    vlc

brew cask install \
    alfred \
    bartender \
    carbon-copy-cloner \
    protonvpn

echo INGORED: brew cask install \
    firefox-developer-edition \
    sloth \
    kode54-cog \
    xnviewmp \
    yacreader \
    vivaldi \
    synthesia \
    spectacle \
    nextcloud \
    transmission \
    xit

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

brew install github/gh/gh

echo brew install \
    cocoapods \
    carthage

brew install ruby
export PATH="/usr/local/opt/ruby/bin:$PATH"
gem install bundler jekyll
gem install cocoapods
