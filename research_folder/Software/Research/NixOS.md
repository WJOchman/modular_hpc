# NixOS Installation and Troubleshooting on Raspberry Pi 4

## Introduction
This document outlines our team's process to install NixOS on a Raspberry Pi 4 Single Board Computer (SBC) for a high-performance computing project. It describes the initial installation steps, package downloads, encountered issues, and the attempts to resolve them.

## NixOS
NixOS is a Linux distribution built on top of the Nix package manager. It features a declarative configuration model, allowing users to specify system configurations in the Nix language, making systems reproducible and upgradable. NixOS emphasises package management isolation, enabling multiple versions of software to coexist without conflict and making the rollback of changes straightforward.

## NixOS Installation
The NixOS operating system was downloaded onto a team member's laptop (Ahmed Mohamed Haniffa Arfan) as a first step towards creating a versatile computing environment on the Raspberry Pi 4 SBC. We then used Rufus, a utility for creating bootable USB drives, to transfer the NixOS image to an SD card, preparing it for installation on the Raspberry Pi 4. The bootable SD card was inserted into the Raspberry Pi 4, and the system booted successfully. Finally, the network configuration was started to enable Internet access and package installation.

## Package Installation
After configuring the network, it was possible to download the essential packages, including:

- Development Tools: `vim`, `git`, `gcc`, `bat`, `calc`, `bc`, `dox2unix`, `feh`, `file`, `lsd`
- Nix-specific tools: `nixpkgs-fat`, `nix-output-monitor`, `nix-prefetch-github`
- Network Tools: Attempt to install `samba` for network communication and collaboration.

## Encountered Issue
While installing `samba`, a compatibility error was encountered:

"you need an 'x86_64-linux' with functionality {} to build '/nix/store/58fz02g4p6f3y177nwfkwyqmzzmcm1r0-builder.pl.drv', but I am an 'aarch64-linux' with functionality {benchmark, big-parallel, gccarch- armv8-a, kvm, nixos-test}".

This error indicated an architecture mismatch, as the requested build was for "x86_64-linux", while the project's system architecture was "aarch64-linux".

Then, there was a dependency problem with one of the previously installed packages.

## Troubleshooting attempts
To solve the initial problem, the package was modified to be compatible with our system architecture, thus solving the problem.

For the secondary dependency problem, two strategies have been implemented:

1. **Rolling back system generations**: The first approach was to roll back the NixOS system a few generations in hopes of getting around the error. Unfortunately, this attempt did not solve the problem.

2. **Cleanup of the dependency system**: removing some dependencies that could have caused the conflict was therefore considered. This action inadvertently removed some necessary dependencies, further complicating the situation.

## Decision point
Faced with the unresolved dependency error and accidental removal of essential dependencies, the team had to reconsider using NixOS on the Raspberry Pi 4.

## Conclusion
Eventually, the next steps were decided, considering the progress achieved up to that point, the time constraints and the challenges posed by the operating system. It was thus unanimously decided to use a different operating system.