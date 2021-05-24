{ config, pkgs, ... }:

{
  programs.home-manager.enable = true;

  home.username = "conor";
  home.homeDirectory = "/home/conor";

  programs.git = {
    enable = true;
    userName = "Conor Sinclair";
    userEmail = "conor@sinclair.software";
    aliases = {
      st = "status";
    };
    extraConfig = {
      core.editor = "nvim";
      core.pager = "delta";
      pull.ff = "only";
      init.defaultBranch = "development";
      interactive.diffFilter = "delta --color-onlydefaultBranch = development";
      delta = {
        "plus-color" = "#09CB5F";
        "minus-color" = "#340001";
        "syntax-theme" = "Monokai Extended";
      };
    };
  };
  
  programs.command-not-found.enable = true;

  home.stateVersion = "21.05";
}
