{...}: {
  imports = [
    ./hardware-configuration.nix
    ../../modules/system.nix
    ../../modules/bootloader/systemd-boot.nix
    ../../modules/network.nix
    ../../modules/bluetooth.nix
    ../../modules/time_and_lang.nix
    ../../modules/enable-flakes.nix
    ../../modules/window-managers/i3.nix
    ../../modules/audio/pipewire.nix
    ../../modules/zsh.nix
    ../../modules/main-user.nix
    ../../modules/stylix/general.nix
    ../../modules/stylix/cursor-banana.nix
    ../../modules/packages/general.nix
    ../../modules/packages/development.nix
    ../../modules/packages/terminal.nix
    ../../modules/packages/work.nix
  ];

  networking.hostName = "perWork";

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.05"; # Did you read the comment?
}
