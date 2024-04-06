# OpenSSH - Remote control computing nodes

## Introduction
OpenSSH is a freely available version of the Secure Shell (SSH) protocol family of tools for remotely controlling, or transferring files between, computers. Traditional tools used to accomplish these functions, such as telnet or rcp, are insecure and transmit the user’s password in cleartext when used. OpenSSH provides a server daemon and client tools to facilitate secure, encrypted remote control and file transfer operations, effectively replacing the legacy tools.</br>

## OpenSSH setup
First install OpenSSH on the compute node.

```
sudo apt install openssh-server  
```

Then check it's status using: 

```
sudo systemctl status ssh 
```

Then allow ssh through the firewall

```
sudo ufw allow ssh  
```

Enabling passwordless entry on compute nodes and servers involves setting up SSH keys and configuring host entries. This process allows you to securely log in to remote machines without entering a password each time.</br>

Run the command 'ssh-keygen -t rsa'. This generates a new SSH key pair using RSA encryption.You'll be prompted to choose the location to save the keys and to optionally set a passphrase (you can press Enter to leave it blank for passwordless access).
```
ssh-keygen -t rsa  
```
To copy the hey to the compute nodes, move into the '.ssh' directory and copy the key using the command 'ssh-copy-id username@ip-address', replacing user with your username on the remote server and IP address with the IP address of the remote server. </br>
```
cd /.ssh
ssh-copy-id node02@192.168.2.4
```
Once entered, the public key will be added to the ~/.ssh/authorized_keys file on the remote server.

To verify, simply type the command:
```
ssh node02@192.168.2.4 
```
Replacing 'node02' with you username and '192.168.2.4' with your password.