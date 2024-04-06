# Fikayo Scripts
## OpenSSH
### Slide 34: OpenSSH overview
```
OpenSSH is a powerful collection of tools for the remote control, and transfer of data between, networked computers.
OpenSSH is a freely available version of the Secure Shell (SSH) protocol family of tools for remotely controlling, or transferring files between, computers. Traditional tools used to accomplish these functions, such as telnet or rcp, are insecure and transmit the user’s password in cleartext when used. 
OpenSSH provides a server daemon and client tools to facilitate secure, encrypted remote control and file transfer operations, effectively replacing the legacy tools.
```
### Slide 34: Using OpenSSH
```
To use Openssh, we would need to install the openssh-server  and configure the firewall to allow ssh connections.
Next we generate the ssh key and copy the key to the computing nodes on the network. We have used a password-less configuration for our ssh, for easier access to compute nodes.
```

## Slurm
### Slide 36: Slurm Overview
```
Slurm is a highly scalable and flexible workload manager used primarily in HPC environments. It allows users to efficiently manage and schedule computational tasks across a cluster of computing nodes. A job typically includes details such as the executable to run, required resources, and any specific job parameters. Slurm manages task separation and allocation, to prevent processing errors through a combination of job parameters, resource management mechanisms, and scheduling policies. 
Slurm provides mechanisms for inter-task communication and coordination, allowing tasks to share data or synchronize their operations as needed. Tasks can communicate through shared memory, message passing, or file-based communication, facilitating collaboration and coordination among concurrently executing tasks. 
```
## Cooling
### Slide 43: Cooling Requirements
#### Intake
```
The process of defining the cooling for this HPC is as follows.
Before a fan can be specified, the airflow required to dissipate the heat generated has to be approximated. Both the amount of heat to be dissipated and the density of the air must be known. First we would need to determine the required airflow to adequately cool the components. For this, you can use a rough estimate from the specification of our components. The case can use up a maximum of 220W of power, supplied by the PSU. Strictly for lower limit calculation, we assume that the heat load per row of our cluster is 220W (This would mean that the efficiency of the components is 0) . While different sources give nuanced methods for calculating cooling requirements, the cooling requirements were calculated using BTU/hr.
BTUs/hr are normally used in the definition of the cooling power of HVAC systems
It is a standard that 1watt requires 3.412BTU/hr for cooling. So, the required cooling capacity in BTU/hr would be as shown in the slide along with its CFM conversion.
```
#### Exhaust
```
For proper airflow circulation, you'll need to ensure that the total cross-sectional area of the exhaust vent is equal to or greater than the cross-sectional area of the fan's inlet (or intake) area. This ensures that the airflow is not restricted, allowing for efficient cooling. 
Please refer to the slide for the calculation.
```
### Slide 44: Cooling Method
```
Cooling for this HPC has taken inspiration from various cooling methods. 
The first of these is Row cooling this implies a row-oriented cooling architecture, each cooling unit (fan) is dedicated to cooling one node (row of a module), as opposed to having a larger fan for an entire module.
The second of these methods is raised floor cooling. Which requires us to raise components that generate heat such as the motherboard to allow the flow of air within the plenum.
The last of the cooling methods implemented is Forced convection, which is done using a chassis fan to transfer to transfer dissipated heat over the rows within the cluster.
```

### Slide 44: Fan comparison
```
Selecting a fan for this HPC requires comparison based on criteria like height, CFM, price, connectors, etc. To make this comparison, the options available for selection have been compared in the excel table below.
```