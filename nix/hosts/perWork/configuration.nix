{ ... }:
{
  imports = [
    ../../modules/system.nix
    ../../modules/bootloader/systemd-boot.nix
    ../../modules/network.nix
    ../../modules/bluetooth.nix
    ../../modules/time-and-lang.nix
    ../../modules/security.nix
    ../../modules/enable-flakes.nix
    ../../modules/window-managers/hyprland.nix
    ../../modules/display-managers/sddm.nix
    ../../modules/audio/pipewire.nix
    ../../modules/zsh.nix
    ../../modules/main-user.nix
    ../../modules/stylix/general.nix
    ../../modules/stylix/cursor-bibata.nix
    ../../modules/packages/general.nix
    ../../modules/packages/development.nix
    ../../modules/packages/docker.nix
    # ../../modules/packages/podman.nix
    # ../../modules/packages/media-editing.nix
    ../../modules/packages/security.nix
    ../../modules/packages/terminal.nix
    ../../modules/packages/work.nix
    ../../modules/packages/theming.nix
    ../../modules/theming-tools/stylix/stylix.nix
    ../../modules/flakes/komlesukker.nix
    ../../modules/flakes/otel-tui.nix
    ../../modules/flakes/oq.nix
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
