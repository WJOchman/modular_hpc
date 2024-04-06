# Fikayo Scripts
## OpenSSH
### Slide 26: Pre Boot Execution Environment
```
Pre-Boot Execution Environment is a network protocol that allows a computer to boot and load its OS using resources from a server rather than a USB stick or an SSD. The 3 main components of PXE booting are establishing a DHCP server, TFTP server and a Network File System. 
These must all be configured on head node. In this project, the head node is configured as the DHCP server, TFTP server and NFS server.

```
### Slide 27: Directory Tree of Head Node
```
Being displayed right now is a directory tree of all files relevant to PXE booting.
All required files for PXE booting are stored in tftpboot which is shared via the TFTP server. Within the tftpboot folder there are 2 main folders.
Firstly, the ubuntu folder contains all the necessary files to run the ubuntu live installer on compute nodes.
Secondly, the pxelinux.cfg contains the default file, which specifies the Boot menu.
The tftpboot folder also requires some files from the syslinux library which are essential utilities.

```

### Slide 28: DHCP Server
```
Firstly, all computers in the HPC setup must be able to communicate with each other. The Compute nodes are all connected to the head node (Raspberry pi) via LAN and are in a network. Here, the DHCP (Dynamic Host Configuration Protocol) is used to allow the compute nodes in the network to be dynamically assigned an IP address. This removes the need to perform static routing and addressing on each device of the HPC. 
```

### Slide 29: Configuring DHCP Server in Head Node
```
To setup a DHCP server, we must configure the dhcpd.conf file. In the file, we have specified the IP of our network and the netmask. Under it, we have specified the range of IP addresses in our network, the router, and the next-server parameter here specifies where the TFTP Server is which is the Raspberry pi.  Additionally default and maximum least time were also specified. 
Finally, the file that clients request for booting UEFI systems ‘syslinux.efi’ is also specified.  Therefore, upon obtaining an IP, syslinux.efi is fetched by the compute node.

```

### Slide 30: TFTP Server and its Configuration
```
TFTP (Trivial File Transfer Protocol) is a lightweight protocol used to transfer files between devices on a network. The TFTP server is used to send the files required for booting located in tftpboot in small packets to the client, using the UDP port 69. The client receives the packets and loads the file as the OS. In the tftp configuration file the root directory for the server and the interface used for communication are specified. 
```

### Slide 31: NFS Server and ISO Image
```
After selecting the OS from the boot menu, the images and kernel files must be loaded. Therefore, NFS is setup. NFS allows a system to share directories and files with others over a network. This is done by adding the directory which contains these files as a shared directory across the network.  
An ISO image of Ubuntu 20.04 installer is installed and mounted. It is then copied to the ubuntu directory. This directory now contains all the iso files necessary to install the OS on a machine.


```

### Slide 32: Configuring PXE Boot menu
```
In the NFS exports we specify the ubuntu directory to export and allow it to be shared across all clients in network. ro instructs to perform read only mounting whereas no_root_squash will allow root users to mount the nfs share.
Finally, the PXE Boot menu needs to be configured. The initrd (Initial RAM disk)and vmlinuz (kernel image) files are required to be fetched once user selects operating system via NFS. This must be specified in the Boot menu file.

```

### Slide 32: Overview of PXE Booting Process
```
The illustration provides an overall overview of the PXE process.
When the COMPUTE NODE powers on, the network interface card send a DHCP request to head node.
Head node sees the request, assigns an IP using DHCP. The syslinux.efi and other files are shared to the compute node.
Necessary files are loaded, and the boot menu is shown with an option for UBUNTU 20.04.
After selecting UBUNTU 20.04, NFS is used to load the initrd and vmlinuz files into the compute node.
All required files and services are loaded from head node via TFTP server. Installer loads in and user can run installer to install Ubuntu on system.

```

## Slurm
### Slide 37: Directory Tree on Head Node
```
Being displayed right now is a directory tree of all files relevant to the SLURM setup.
All required configuration files for SLURM are stored in slurm-llnl. Each node needs to be able to access the same files to complete jobs together. Therefore, a 16GB USB drive connected to the head node is setup as a shared storage.

```

### Slide 38: Creating Shared Storage
```
To set this up, the USB stick is formatted and a directory clusterfs to mount the usb stick onto is created. Next, automatic mounting is setup so that the USB mounts onto the directory on boot by editing the fstab file by adding USB’s UUID details and other credentials.
The directory is then exported so other node can access them. Similarly, we must also mount the drive on the compute nodes and this is by creating a folder with the same name clusterfs and adding this file to the compute nodes’s fstab folder. 


```

### Slide 39: Configuring Head Node
```
In the SLURM configuration file located in had node, we
Set the controller machine, cluster name, nodes and partitions and resource allocation method.
Additionally, we configure cgroups support and whitelist system devices files.
The 3 configuration files along with munge key which is needed for authentication are copied to shared storage clusterfs, as compute nodes need to have these same files.


```

### Slide 40: Compute Nodes and Testing
```
We then copy the configuration files from shared storage into the compute node and enable munge. Munge is then tested by generating a key on master node and have the client decrypt it.
As it was a success, the Fig6. was generated.
Sinfo command is run on the head node. Its results show that a partition was created, having two nodes under it as specified in configuration file. 


```

### Slide 41: R Program for Testing
```
An R Program is created, which generates 10000 random datasets following a normal distribution and density plots are created and saved as JPEG files. 50 instances of the R program are performed parallely, resulting in 50 unique plots to each job ID.


```