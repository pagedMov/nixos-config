{lib, config, pkgs, ...}: {
  options = {
    sysProgs.enable = lib.mkEnableOption "enables default system programs";
  };
  config = lib.mkIf config.sysProgs.enable {
    programs = {
      hyprland.enable = lib.mkDefault true;
      zsh.enable = lib.mkDefault true;
      nix-ld = {
        enable = lib.mkDefault true;
        libraries = with pkgs; [
          stdenv.cc.cc
          ffmpeg-full
        ];
      };
      gnupg.agent = {
        enable = lib.mkDefault true;
        enableSSHSupport = lib.mkDefault true;
      };
    };
  };
}
