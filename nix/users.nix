{config, pkgs, ...}:
{  
  nix.settings.allowed-users = ["root" "martin"];

  programs = {
    zsh.enable = true;
  };
  services = {
    picom.enable = true;
  };
  fonts = {
    fontDir.enable = true;
    packages = with pkgs; [ 
      font-awesome
      font-awesome_4
      font-awesome_5
      noto-fonts
    ];
  };

  users.users.martin = {
    isNormalUser = true;
    description = "Martin Unterhofer";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
    shell = pkgs.zsh;
    useDefaultShell = true;
  };
}
