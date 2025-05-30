{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    podman
    podman-tui
    qemu
    virtiofsd
  ];
}
