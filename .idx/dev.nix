# To learn more about how to use Nix to configure your environment
# see: https://developers.google.com/idx/guides/customize-idx-env
{ pkgs, ... }: {
  channel = "stable-23.05"; # "stable-23.05" or "unstable"
  # Use https://search.nixos.org/packages to  find packages
  packages = [
    pkgs.php82
    pkgs.php82Packages.composer
  ];
  # Sets environment variables in the workspace
  env = {};
  # search for the extension on https://open-vsx.org/ and use "publisher.id"
  idx.extensions = [
    # "vscodevim.vim"
  ];
  # preview configuration, identical to monospace.json
  idx.previews = {
  };
  # This sets up environment variables if needed
}