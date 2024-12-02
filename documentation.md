# Documentation for RTVP

## Overview

This document details the steps required to get started with the RTVP model exchange format.

The instructions will describe the process to get the system up and running with two pre-compiled FMU models, running as an FMU block within a Simulink model, and visualising the real-time results in the co-simulation tool. 

Then, a more detailed set of instructions will describe the process to edit one of the examples and re-run the simulation. This example will involve using the in-house virtual prototyping software to change the model geometry, export the reduced-order model matrices and additional 3D RTVP files, pre-process these files using a MATLAB script, and then import them into the FMU template, compile the new FMU, and finally import it into the Simulink model and run the simulation.

## Required Software

The instructions below will talk you through the installation of any required software. These include the following:
- MATLAB 2024
- Simulink
- SimScape Electrical
- FMI Kit for Simulink
- Visual Studio 2022
- VPPE (Our own software for virtual prototyping)
- Co-simulation Tool (Our software for visualising 3D-RTVP FMU Models)

## Simulating pre-compiled 3D-RTVP models

Two example FMU models have been pre-compiled and included in this repository.

1. Install [MATLAB 2024a or higher](https://www.mathworks.com/help/install/ug/install-products-with-internet-connection.html)
    - Install Simulink
    - Install SimScape modules (in particular, SimScape Electrical)
    
2. Download [RTVP repository](https://github.com/plevans/RTVP_v1)

3. Install [FMI Kit for Simulink](https://github.com/CATIA-Systems/FMIKit-Simulink)

4. Open Simulink model *Thermal_NoDev*

5. Add FMU model to Simulink circuit
    - Double-click on TO247 device to enter sub-system
    - Delete existing FMU block
    - Create new FMU block
    - Double-click FMU block to access properties and settings
    - Click "Load"
    - Select the *Thermal_NoDev* example model from the downloaded repository files
    - Ensure that the input and output ports are connected to the rest of the sub-system
    - Return to the circuit-level system 

6. Run the co-simulation tool
    - It will sit with a blank visualisation window waiting for a simulation to start

7. Run the Simulink model
    - You can also click the Scope block to view an oscilloscope
    - You should automatically see the co-simulation tool visualising the device temperature

### Troubleshooting

The process above should work in most cases and not give any errors. However, you may notice that you run into some issues. If this is the case then you can try one of the solutions below. If there is no solution to your problem, please get in touch so that we can address the issue and also add it to this list of issues. 

## Edit Examples - Generating, Compiling and Simulating 3D-RTVP models

Now that you have followed the above instructions to get some pre-existing examples running, we will try to change the model geometry and walk through the process of re-generating the RTVP FMU model and getting it simulated. This process is straight-forward but requires a few more steps and to make sure that certain additional tools are properly installed. 

1. Run the installer for vppe3, the in-house developed virtual prototyping software

2. Download and install Visual Studio 2022 Community [from here](https://visualstudio.microsoft.com/downloads/). This will be required to compile the FMU models.
    - Make sure to select Desktop Development with C++
    - Also make sure to select C++ CMake Tools for Windows
    - ![VS2022 Installation Screenshot](https://github.com/user-attachments/assets/a742eadd-0c84-492d-a125-b33c750fc517)

3. Open VS2022 and Open Reference-FMUs project
    - Wait for Visual Studio to set up the CMake project.

4. Run VPPE virtual prototyping software 

5. Open Thermal_NoDev project

6. Click Model View on the top toolbar to show the model
    - You may need to click within the pop-up window and press '0' to reset the view

7. Click an item on the left tree to reveal the geometry for it
    - Change the co-ordinates slightly
    - Note that the units are metres (so 0.01 is 1mm)

8. Click Run Simulation at the top
    - This will automatically mesh the geometry and also run a time-domain simulation

9. Generate waveforms 
    - Click the Graphical Waveforms tab on the left
    - Click the Add Waveform button at the bottom
    - In the pop-up window:
        - Enter a name for the waveform
        - Select the desired waveform (e.g. T for surface temperature)
        - Click OK to close the pop-up window
    - Click the newly generated waveform
    - View the waveform in the model view
        - You may have to click *Previous Simulation* from the selectors on the left menu
    - Move the timesteps slider on the bottom left of the window to visualise how the simulation progress
    - If you are happy with the model, proceed to the next step. Otherwise, go back and change the geometry and repeat until you are happy.

10. Export FMU from the top menu bar by selecting Export then Export FMU
    - This will then open a window to enter a name in the File Name text box. You do not need to create a new folder. The file name you enter will be used to create a folder containing all needed simulation matrices and additional 3D RTVP files. 
    - Now you should have these files generated at this selected location.

11. Run MATLAB pre-processing script (VP2FMU.m)
    - Ensure MATLAB is installed
    - Open MATLAB
    - Ensure FMIKit is installed
    - Open the VP2FMU.m script
    - Run the script
    - This will generate a c_code_to_paste.h file in the same location as the script. The contents of this file will be pasted into the FMU

12. Edit FMU source code and add 3D files
    - Open Reference-FMUs in Visual Studio 2022
    - Open config.h 
    - Copy the ... lines from the c_code_to_paste.h file to config.h
    - Open model.c
    - Copy the ... lines from the c_code_to_paste.h file to model.c
    - Finally, within the model.c file, manually change the numerical values for the m, n, r, s, t structural parameters to match the numbers in the c_code_to_paste.h file
    - Now go to the location of the files exported from the Export FMU menu option in VPPE3
    - Copy these files and paste them into the resources folder within the Thermal_NoDev FMU files

13. Compile the FMUs
    - Right-click Reference-FMUs and click Rebuild...
    - This should clean and build the FMUs, and also include the resources that are required for 3D-RTVP co-simulation
    - This will create Thermal_NoDev.fmu within the build/fmus folder

14. Open the Thermal_NoDev Simulink model

15. Reload the FMU block as before, and this time load the newly generated Thermal_NoDev.fmu model 

16. Run the co-simulation tool

17. Run the Simulink simulation

### Troubleshooting

The process above should work in most cases and not give any errors. However, you may notice that you run into some issues. If this is the case then you can try one of the solutions below. If there is no solution to your problem, please get in touch so that we can address the issue and also add it to this list of issues. 