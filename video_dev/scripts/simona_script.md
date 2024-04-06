# Simona Scripts
## System Design and Architecture

* Design and architecture  
To develop the system’s design and architecture, we had to work with components provided by the university. We were provided with 10 ASUS CS-8 motherboards, 10 SD cards, multiple 220W PSUs and a 5-port switch. To meet the modular criteria of the project, a single module consists of four nodes, three containing a motherboard with its corresponding PSU, and the fourth node being the head node which holds the single board computer and the switch. Consider Figure 1. Due to the switch having 5 ethernet ports, 3 ports are taken by the motherboards; one port is taken by the single board computer, leaving an extra ethernet port to allow the entire HPC module to be connected to another copy of the HPC module in a daisy chain configuration. This daisy chain can be extended to multiple copies of the HPC. Consider Figure 2.

* NixOS why, what tried what failed  
NixOS was initially selected as the operating system due to its reproducible and declarative nature. Using Rufus, the system was loaded onto a bootable SD card. The system's structure utilised a main configuration file referencing 3 other separate files for managing the configuration, packages, and services. During the installation of various packages, an error occurred with the Samba package — a critical component for network communication — because an incompatible version was downloaded for the system's architecture. Attempts to resolve this included rolling back the system, which did not give the desired results, and cleaning dependencies, but this step inadvertently removed essential components, halting system progress. The group had to consider either transitioning to a new OS or reinstalling NixOS. A comparative analysis of NixOS, Debian, Ubuntu, and Arch Linux was conducted to inform the decision.

* OS Comparisons  
Given the limited progress made and NixOS's complexity, the decision was made to switch to an alternative operating system, with Ubuntu being the selected replacement. This choice was influenced by Ubuntu's user-friendly nature, making it a practical option for those new to Linux, as well as its broad accessibility. It has efficient package management via APT and DEB as a package format and offers stable releases with extended support. Additionally, its substantial documentation and supportive community simplify troubleshooting. Ubuntu also emphasises security in system integration and has a wide repository containing over 60,000 packages, further validating its selection.

## Future Work

* SingularityCE  
Moving forward, several “next steps” could be taken. We have narrowed down to four points which would be implemented if the project was to be continued. 
Firstly, introduce containerisation with Singularity, which offers a consistent, and secure environment crucial for HPC’s varied computational demands. 
* John the Ripper  
Secondly, John the Ripper, an open-source password cracker used for the testing of password strengths, and consequently the enhancement of security of the HPC.
* Prometheus  
Thirdly, application of Prometheus, an open-source system designed for the monitoring of HPC’s performance. 
* Jaeger  
And lastly, Jaeger, which with combination with Prometheus would allow for the tracing and identification of issues within the HPC system.