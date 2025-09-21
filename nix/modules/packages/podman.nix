{ pkgs, ... }:
{
  virtualisation.podman.enable = true;
  virtualisation.podman.dockerSocket.enable = true;
  users.extraGroups.podman.members = [ "phj" ];

  environment.systemPackages = with pkgs; [
    podman-compose
    podman-tui
    qemu
    virtiofsd
    passt
  ];
}
