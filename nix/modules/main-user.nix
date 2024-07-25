{ pkgs, ... }:
{
  users.users.phj = {
    isNormalUser = true;
    description = "Per";
    shell = pkgs.zsh;
    extraGroups = [ "networkmanager" "wheel" "audio" ];
    packages = with pkgs; [];
  };
}
