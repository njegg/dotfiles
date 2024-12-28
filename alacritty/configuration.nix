# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "egg"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "Europe/Belgrade";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  nix.extraOptions =
  ''
      experimental-features = nix-command flakes
  '';

  sound.enable = true;
  nixpkgs.config.pulseaudio = true;
  hardware.pulseaudio.enable = true;
  hardware.enableAllFirmware  = true;

  # Configure keymap in X11
  services = {
    xserver = {
      enable = true;
      layout = "us";
      xkbOptions = "caps:escape";
      autoRepeatDelay = 160;
      autoRepeatInterval = 1000;

      libinput = {
	      enable = true;
	      mouse = {
		      accelProfile = "flat";
	      };
      };

      windowManager.i3 = {
        enable = true;
        package = pkgs.i3;
      };

      displayManager.lightdm = {
        enable = true;
      };

    };

    logind = {
        lidSwitch = "hibernate";
        powerKey = "hibernate";
        lidSwitchExternalPower = "hibernate";
    };

    #actkbd = {
    #    enable = true;
    #    bindings = [
    #    { keys = [ 224 ]; events = [ "key" ]; command = "/run/current-system/sw/bin/light -A 10"; }
    #    { keys = [ 225 ]; events = [ "key" ]; command = "/run/current-system/sw/bin/light -U 10"; }
    #    ];
    #};

    picom.enable = true;
  };

  users.users.nj = {
    isNormalUser = true;
    description = "nj";
    extraGroups = [ "networkmanager" "wheel" "video" "audio" ];
    packages = with pkgs; [];
  };

  programs.light.enable = true;

  programs.fish.enable = true;
  users.defaultUserShell = pkgs.fish;

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    neovim
    vim
    firefox
    git
    stow
    alacritty
    fzf
    pkgs.asdf
    pkgs.asdf-vm
    lxappearance
    zellij
    eza
    tmux
    xclip
    ripgrep
    libgcc
    gcc
    ruby
    trash-cli
    rustup
    polybar
    killall
    feh
    discord
    blender
    jetbrains-toolbox
    dotnet-sdk_8
    unzip
    flameshot
    dunst
    gnupg
    p7zip
    odin
  ];

  system.stateVersion = "24.05";
}
