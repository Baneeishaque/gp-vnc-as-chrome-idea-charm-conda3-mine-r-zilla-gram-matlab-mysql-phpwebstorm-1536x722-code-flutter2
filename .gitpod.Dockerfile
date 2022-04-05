FROM baneeishaque/gp-vnc-zsh-as-gh-chrome-idea-charm-conda3-mine-r-zilla-gram-matlab-mysql-phpwebstorm-1536x722-code

### Install Flutter
# dependencies
RUN sudo apt update \
 && sudo apt install -y \
     libglu1-mesa \
 && sudo rm -rf /var/lib/apt/lists/*

ARG flutterSdkDownloadUrl="https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_2.2.3-stable.tar.xz"

WORKDIR $HOME
RUN sudo wget -qO flutter_sdk.tar.xz $flutterSdkDownloadUrl \
 && sudo tar -xvf flutter_sdk.tar.xz \
 && sudo rm flutter_sdk.tar.xz
    
ENV PATH="$PATH:$HOME/flutter/bin"

RUN sudo $HOME/flutter/bin/flutter precache
