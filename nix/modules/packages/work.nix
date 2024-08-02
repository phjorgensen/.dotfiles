{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    teams
    slack
    gitkraken
    # kitemaker
  ];
}
