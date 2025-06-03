{pkgs, ...}: {
  virtualisation.docker = {
    enable = true;
  };

  users.extraGroups.docker.members = ["phj"];

  environment.systemPackages = with pkgs; [
    lazydocker
    gomanagedocker
  ];
}
