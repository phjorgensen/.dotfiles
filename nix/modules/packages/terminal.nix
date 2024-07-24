{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    tmux
    wezterm
    fzf
    lazygit
    btop
    fastfetch
    starship
  ];
}
