{ config, pkgs, ... }:

{
  home = {
    stateVersion = "24.05";
    username = "martin";
    homeDirectory = "/home/martin";
  };

  programs.home-manager.enable = true;

  programs = {

    vim = {
      enable = true;
      defaultEditor = true;
      extraConfig = ''
        set number
        set tabstop=4
        set shiftwidth=4
        set expandtab
        
        function CP2XCLIP()
        :call system('xclip -selection c', @r)
        endfunction

        vnoremap z "ry:call CP2XCLIP()<CR>

      '';
    };
    zsh = {
      enable = true;
      enableCompletion = true;
      autosuggestion.enable = true;
      syntaxHighlighting.enable = true;
        shellAliases = {
        ll = "ls -l";
	    la = "ls -a";
	    update = "sudo nixos-rebuild switch && home-manager switch";
	    homeedit = "sudo vim /home/martin/.config/home-manager/home.nix";
	    install = "sudo vim /etc/nixos/packages.nix";
	    configedit = "cd /etc/nixos && ll";
      };
      oh-my-zsh = {
        enable = true;
        theme = "minimal";
      };
      initExtra = ''
      '';
    };

    git = {
      enable = true;
      userName = "unt3rhofer";
      userEmail = "martin.unter@icloud.com";
    };
  };
}

