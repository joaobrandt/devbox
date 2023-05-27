FROM docker.io/library/archlinux as arch

# Optional directory to mount the host's home directory
RUN mkdir -p /mnt/host

# General packages
RUN pacman --sync --refresh --refresh --sysupgrade --noconfirm \
    bat \
    chezmoi \
    curl \
    git \
    helix \
    jdk-openjdk \
    jq \
    lazygit \
    make \
    neofetch \
    nodejs \
    npm \
    neovim \
    python \
    python-pip \
    ruby \
    rust \
    sudo \
    tmux \
    tmuxp \
    vim \
    wget \
    wl-clipboard \
    xclip \
    zsh \
    zsh-completions

# LunarVim instalation
ARG LUNARVIM_VERSION=1.3
ARG NEOVIM_VERSION=0.9
RUN bash <(curl -s "https://raw.githubusercontent.com/lunarvim/lunarvim/release-${LUNARVIM_VERSION}/neovim-${NEOVIM_VERSION}/utils/installer/install.sh") -y

CMD ["/bin/zsh"]

