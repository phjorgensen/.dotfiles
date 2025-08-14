{ pkgs, ... }:
{
  users.users.phj = {
    isNormalUser = true;
    description = "Per";
    shell = pkgs.zsh;
    # shell = pkgs.nushell;
    extraGroups = [
      "networkmanager"
      "wheel"
      "audio"
    ];
  };
}
