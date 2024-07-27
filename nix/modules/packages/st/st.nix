{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    (st.overrideAttrs (oldAttrs: rec {
      configFile = writeText "config.def.h" (builtins.readFile ./config.def.h);
      postPatch = "${oldAttrs.postPatch}\n cp ${configFile} config.def.h";
    }))
  ];
}
