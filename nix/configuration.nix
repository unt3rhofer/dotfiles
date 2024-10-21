{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ./i3.nix
      ./locales.nix
      ./packages.nix
      ./users.nix
    ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "nixos";
  networking.networkmanager.enable = true;

  system.stateVersion = "24.05";

}
