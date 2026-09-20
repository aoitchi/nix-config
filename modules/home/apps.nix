{ pkgs, inputs, ... }:
{
  programs.foot = {
    enable = true;
    settings = {
      main = {
        font = "UDEV Gothic NF:size=10";
      };
    };
  };

  programs.firefox = {
    enable = true;
    profiles.default = {
      extensions.packages = with inputs.firefox-addons.packages.${pkgs.system}; [
        proton-pass
        ublock-origin
        vimium
      ];
    };
  };

  programs.obs-studio.enable = true;

  home.packages = with pkgs; [
    slack
    discord
  ];
}
