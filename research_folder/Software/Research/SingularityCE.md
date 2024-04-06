# SingularityCE

## Introduction
SingularityCE (Community Edition) is an open-source container platform designed for high-performance computing (HPC), scientific computing, and data-intensive workloads. It excels in environments where resources are shared, such as in academic or research institutions. SingularityCE enables the creation and running of containers that package software in a portable and reproducible way, which is critical for efficiently running complex applications on shared systems and HPC environments.

## Installation
### Prerequisites
On Debian-based systems (including Ubuntu), update the system repositories:

```
sudo apt-get update
```

And install the necessary development tools and libraries:

```
sudo apt-get install -y \
    autoconf \
    automake \
    cryptsetup \
    git \
    libfuse-dev \
    libglib2.0-dev \
    libseccomp-dev \
    libtool \
    pkg-config \
    runc \
    squashfs-tools \
    squashfs-tools-ng \
    uidmap \
    wget \
    zlib1g-dev
```

Installing SingularityCE involves three steps:

1. **Installing Go**: SingularityCE is written in Go and may require a newer version.
2. **SingularityCE Download**: Get the latest version from the official source.
3. **Compiling the SingularityCE source code**:

```
$ ./mconfig && \
      make -C builddir && \
      sudo make -C builddir install
```

## Overview of the SingularityCE interface
The SingularityCE CLI allows you to create and interact with containers transparently, supporting various commands and options for managing container images and execution environments.

### Download pre-built images
Use the "search" command to find images of interest in the container library and the "pull" or "build" commands to download pre-built images from external resources:

```
$singularity pull library://lolcow
$singularity create library ubuntu.sif://ubuntu
```

### Interact with images
SingularityCE supports various commands for interacting with images, including "shell", "exec", and "run", allowing for flexible management and execution of containerised applications.

### Creating images from scratch
To create immutable, secure, and shareable container images, SingularityCE supports building images from scratch using Singularity Definition Files, ensuring reproducibility of containerised applications.

