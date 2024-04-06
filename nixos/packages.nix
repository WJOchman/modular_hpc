{ pkgs, ... }: {

  environment.systemPackages = with pkgs; [

    vim
    wget
    git
    openssh
    gcc
    bat
    calc
    bc
    dos2unix
    file
    feh
    qt6.full
    lsd
    iwd
    nixpkgs-fmt
    nix-output-monitor
    nix-prefetch-github
    htop
    neofetch
    zellij
    dhcpcd
    dnsx
    slurm
    dnsmasq	
  ];

}
