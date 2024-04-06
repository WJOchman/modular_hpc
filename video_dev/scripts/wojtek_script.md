# Wojtek Scripts
## Introduction Slides Script
### Slide 1: Introduction Slide
```
Hello and welcome to the video presentation on the development of a modular HPC for Advanced Computer Engineering at the University of Greenwich. 
```

### Slide 2: Aim and Objectives
```
The aim of this project is to design and develop a prototype of a modular HPC. The final prototype should have the ability to perform exercises such as DNA sequencing, password cracking, weather predictions, and more. 
```

### Slide 3: Table of Contents
```
This presentation is broken down into 8 chapters. We hope you enjoy the video. 
```

## Design & Manufacturing Script
### Slide 45: Case Design Introduction

```
The HPC design has been inspired by Japanese Joinery, creating interlocking ridges (or box joints) allowing for the slotting of components to minimise the use of screws and glue.

Additionally, the case has been designed to be a hybrid between a suitcase, allowing the user to transport the HPC comfortably by pulling, pushing, and lifting; and a shelving unit, dedicating an individual shelf per node, creating a separated and controlled environment for optimised cooling and organised arrangement of parts for inspection and troubleshooting. 
```

### Slide 46: Shelf Design
```
The design has been developed using Blender. The strategy was to design a single shelf and multiply that design by 4.  

However, the HPC contains two types of shelves: general, and head. The shelf design has been based around the general shelf due to its containment of the largest components: a motherboard, PSU, SD card, and a fan. Whereas, the head shelf only contains the Raspberry Pi, and the Switch with some extra room for a small keyboard.

Due to the tolerance margin of the laser cutter available, 3 types of brackets were designed to ensure that a shelf holds itself securely. The truss holds the motherboard whilst elevating it to allow for thorough air circulation and storage of up to 2 SD cards. 

Instead of the motherboard truss, the head shelf contains a case for the raspberry pi and a switch to secure their positions. 

Lastly, all shelves contain a removable shelf handle for easy opening and closing, shelf stoppers to securely close the shelves during transport, and a top wall handle. 
```

### Slide 47: Outer Case Layer
 ```
 The outer layer has also been initially designed in Blender. However, the designs had to be re-created in TechSoft Design as the laser cutter reads files in DXF format instead of STL.

A double outer layer has been designed to hold the shelves together and allow the shelf runners to be installed with top and bottom outer layers securing the casing structure. 
```

### Slide 48: 3D Printing
```
Two types of rapid manufacturing techniques have been utilised, additive and reductive manufacturing. 

In total, 54 parts have been printed, with a total print time of approximately 177 hours and 30 minutes which is equivalent to 7 days, 9 hours, 30 minutes, and approximately 1.4kg of PLA which in today’s market can cost up to £40.  

```

### Slide 49: Laser Cutting
```
Initially, acrylic was meant to be used for the case. However, a single board of acrylic of 1200mm by 600mm at 9mm thick cost £90. Whereas the same dimensions of plywood costs £26. Calculations have estimated that approximately 1.7 squared meters of plywood was required to laser cut all necessary components for a single HPC. This equates to 3 boards of plywood, however, for safety an order of 4 plywood board was placed coming up to £104. 

In total, 20 wooden pieces were laser cut for the shelves and 6 pieces for the outer layer of the shelving unit. Additionally, 4 pieces of 3mm acrylic were cut as the shelf covers for the purposes of allowing the user to inspect a single shelf without having to remove the cover first. The top cover of the outer layer has been engraved with the course, and team details alongside a QR code which takes the user to the GitHub repository of this project.  

```

### Slide 50: Assembly 
```
The assembly process took 3 days. In total, to assemble the entire structure including shelves, outer layer, caster wheels and suitcase handle, 122 M3 wooden screws were used, 74 at 15mm length, and 48 and 20mm length. 
```

### Slide 51: Final Prototype
```
The final prototype stands at just under 70cm tall with a width of 37cm and depth of 27cm. The total cost of materials and components comes up to approximately £220, which is within the £300 budget.
```

## Project Management Script
### Slide 53:
```
The workload has been divided and delegated across the team according to the strengths and interests of each member. 

A visual timeline has been developed as a guideline of the project's lifecycle. Additionally, GitHub Projects was incorporated for further visualisation using Kanban, Table, and Roadmap layouts.
```

### Slide 54: Version Control with Git and GitHub
```
All project files have been managed and controlled using Git and GitHub for version control. In total, 5 branches were used: research-branch, dev-branch, design-branch, video-branch, and main.
```