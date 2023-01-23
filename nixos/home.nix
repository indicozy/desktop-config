{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "indicozy";
  home.homeDirectory = "/home/indicozy";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "22.11";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # If you don't want to configure Firefox:
  home.packages = with pkgs; [ firefox tdesktop git gnupg gawk nodejs-16_x ack neofetch
  spectre-cli
  keepassxc
  direnv
  inkscape
  gimp
  libsForQt5.kdenlive
  krita
  ulauncher
  prisma-engines
  nodePackages.prisma
  transmission
  transmission-gtk
  ];
  programs.neovim = {
    enable = true;
  };
programs.vscode = {
  enable = true;
  package = pkgs.vscodium;
  # extensions = with pkgs.vscode-extensions; [
  #   dracula-theme.theme-dracula
  #   vscodevim.vim
  #   yzhang.markdown-all-in-one
  # ];
};

  programs.zsh = {
  enable = true;
  shellAliases = {
    ll = "ls -l";
    mpw = "spectre";
  };
  history = {
    size = 10000;
    path = "${config.xdg.dataHome}/zsh/history";
  };
  oh-my-zsh = {
    enable = true;
    plugins = [ "git" ];
    theme = "robbyrussell";
  };
};

  programs.direnv.enable = true;
  programs.direnv.nix-direnv.enable = true;
}
