{ config, pkgs, ... }:

{

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    dconf
    dmenu
    feh
    git
    google-chrome
    home-manager
    i3
    i3lock
    i3status
    j4-dmenu-desktop
    lxappearance
    maim
    cinnamon.nemo
    neofetch
    oh-my-zsh
    picom
    thunderbird
    tilix
    vim
    vscodium
    wget
    xclip
    zsh
  ];
}
