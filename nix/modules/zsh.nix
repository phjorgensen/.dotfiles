{pkgs, ...}: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    syntaxHighlighting.enable = true;
    autosuggestions.enable = true;
  };

  users.defaultUserShell = pkgs.zsh;

  # environment.systemPackages = with pkgs; [
  #   zplug
  # ];
}
