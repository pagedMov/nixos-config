{
  pkgs,
  inputs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    alejandra
    alsa-lib
    alsa-utils
    bc
    cava
		cabal-install
    clang
    clang-tools
    cliphist
    cmake
    fail2ban
    feh
    ffmpeg-full
    fuse
    git
    gnumake
    gst_all_1.gstreamer
    htop
    hyprland
    hyprland-workspaces
    hyprpicker
    imagemagick
    inetutils
    kitty
    libclang
    libcxx
    lolcat
    lsof
    lua-language-server
    luarocks
    mesa
    mpd
    mullvad
    mesa
    neofetch
    nh
    nix-index
    nix-output-monitor
    nix-prefetch-scripts
    nixos-option
    nix-search-cli
    nvd
    openssl
    p7zip
    jq
    pamixer
    parted
    pavucontrol
    pkg-config
    playerctl
    protonmail-bridge
    protontricks
    pyright
    socat
    sox
    stress
    tor
    tree
    unrar
    unzip
    usbutils
    vim
    vscode-langservers-extracted
    vulkan-loader
    wget
    wine
    wl-clipboard
    xpad
    libnotify
    file
    libvirt-glib
  ];
}
