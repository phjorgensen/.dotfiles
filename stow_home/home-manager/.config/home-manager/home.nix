{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "phj";
  home.homeDirectory = "/home/phj";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "24.05"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = with pkgs; [
    nerdfonts
    # # Adds the 'hello' command to your environment. It prints a friendly
    # # "Hello, world!" when run.
    # pkgs.hello

    # # It is sometimes useful to fine-tune packages, for example, by applying
    # # overrides. You can do that directly here, just don't forget the
    # # parentheses. Maybe you want to install Nerd Fonts with a limited number of
    # # fonts?
    # (pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })

    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (pkgs.writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;
    ".zshrc".source = ~/Projects/.dotfiles/stow_home/zsh/.zshrc;
    ".config/nvim/init.lua".source = ~/Projects/.dotfiles/stow_home/nvim/.config/nvim/init.lua;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/phj/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  # Let Home Manager install and manage itself.
  programs = {
    home-manager.enable = true;
    git = {
      enable = true;
      userName = "Per";
      userEmail = "phjorgensenn@gmail.com";
	    includes = [
        { path = "~/.gitlocalconfig"; }
      ];
      extraConfig = {
        pull.ff = "only";
      };
    };
    # zsh = {
    #   enable = true;
    #   enableCompletion = true;
    #   autosuggestion.enable = true;
    #   syntaxHighlighting.enable = true;

    #   shellAliases = {
    #     ll = "ls -l";
    #     switch = "sudo nixos-rebuild switch";
    #   };

    #   history = {
    #     size = 10000;
    #     save = 10000;
    #     path = "$HOME/.config/zsh/.zsh_history";
    #     ignoreAllDups = true;
    #     expireDuplicatesFirst = true;
    #   };

    #   initExtra = ''
    #     export ZSH=$HOME/.config/zsh

    #     source $ZSH/remap.sh

    #     eval "$(starship init zsh)"

    #     export NVM_DIR="$HOME/.nvm"
    #     [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    #     [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

    #     export PATH="$HOME/.adr-tools/src:$PATH"
    #     export PATH="/usr/local/go/bin:$PATH"

    #     { alias air="$(go env GOPATH)/bin/air"; } 2>/dev/null

    #     export JAVA_HOME=/usr/local/android-studio/jbr 2> /dev/null
    #     export ANDROID_HOME="$HOME/Android/Sdk" 2> /dev/null
    #     export NDK_HOME="$ANDROID_HOME/ndk/26.2.11394342" 2> /dev/null

    #     [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
    #   '';

    #   zplug = {
    #     enable = true;
    #     plugins = [
    #       { name = "zsh-users/zsh-syntax-highlighting"; }
    #       { name = "zsh-users/zsh-autosuggestions"; }
    #       { name = "zsh-users/zsh-completions"; }
    #     ];
    #   };
    # };
  };
}
