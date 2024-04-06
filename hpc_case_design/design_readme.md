# Introduction
The purpose of this file is to serve as a guideline through the hpc_case_design folder. This document will present an overview of the file structure of the folder, and what you will find in it. What technologies have been used to develop them and how you can use them.

## Table of Contents
- [Introduction](#introduction)
- [File Structure](#file-structure)
- [3D Printing Files](#3d-printing-files)
- [Laser Cutting Files](#laser-cutting-files)

## File Structure
```
├── hpc_case_design
│   ├── design_readme.md => (You are HERE!)
│   ├── cooling
│   │   ├── Cooling_Requirements.md
│   │   ├── Fan comparison.xlsx
│   │   ├── HPC Cooling solutions.md
│   │   |
│   ├── 3d_printing
│   │   ├── cad_files
│   │   │   ├── head_shelf_design.blend
│   │   │   ├── shelf_design.blend
│   │   │   ├── general-shelf
│   │   │   │   └── ...
│   │   │   ├── head-shelf
│   │   │   │   └── ...
│   │   │   ├── outer-layer
│   │   │   │   └── ...
│   │   │   └── renders
│   │   │       └── ...
│   │   ├── stl_files
│   │   │   ├── general-shelf
│   │   │   │   └── ...
│   │   │   ├── head-shelf
│   │   │   │   └── ...
│   │   │   └── outer-layer
│   │   │       └── ...
│   ├── laser_cutting
│   │   ├── 3vs_files
│   │   │   ├── inner_shelf
│   │   │   │   └── ...
│   │   │   ├── outer_shelf
│   │   │   │   └── ...
│   │   │   └── testCut.3vs
│   │   └── dxf_files
│   │   │   ├── inner_shelf
│   │   │   │   └── ...
│   │   │   ├── outer_shelf
│   │   │   │   └── ...
│   │   │   └── testCut.dxf
```

## 3D Printing Files
The folder is broken down into two main folders organised by the manufacturing methods used in this project. The first is `3D Printing`, and the second being `Laser Cutting`. 

The 3D printing folder is divided into further two sections, the first being `cad_files` which are created using Blender, an open-source computer-aided design platform, you can get Blender form here: https://www.blender.org/

The second is `stl_files` which are ready-to-slice files of the Blender CAD files. The slicing software used in the production of this prototype has been Creality Slicer, however other slicing software can be used, such as UltiMaker Cura. 

Both `cad_files` and `stl_files` are separated into three predominant categories: (a) `general-shelf` components, (b) `head-shelf` components, and (c) `outer-layer` components. 

## Laser Cutting Files
The `laser_cutting` folder is broken down into two sub-folders: (a) `3vs_files` and (b) `dxf_files`. The laser cuttable pieces had to be designed using TechSoft Design V3 software. 

These designs were exported into `.dxf` files which are then readable by the laser cutter.

## Cooling
The `cooling` folder consists of the calculations done for the HPC in BTU/hr as mentioned in the `README.md` file. It describes how and why the selected units were used and the standards for using those units. This is shown in the `Cooling_Requirements.md` file. The `Fan comparison.xlsx` file contains the comparisons for the fans used to cool the HPC. The selection criteria are displayed as column labels and the calculation for the energy (heat energy dissipated is displayed). inally, the `HPC Cooling Solutions.md` file describes the existing cooling methods used in the design for the HPC.
