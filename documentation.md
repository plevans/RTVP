# Documentation for RTVP

This document details the steps required to get started with the RTVP model exchange format.

The instructions will describe the process to get the system up and running with two pre-compiled FMU models, running as an FMU block within a Simulink model, and visualising the real-time results in the co-simulation tool. 

Then, a more detailed set of instructions will describe the process to edit one of the examples and re-run the simulation. This example will involve using the in-house virtual prototyping software to change the model geometry, export the reduced-order model matrices and additional 3D RTVP files, pre-process these files using a MATLAB script, and then import them into the FMU template, compile the new FMU, and finally import it into the Simulink model and run the simulation.

## Simulating pre-compiled 3D-RTVP models

Two example FMU models have been pre-compiled and included in this repository.

1. Install MATLAB
    - Install SimScape modules
    
2. Download RTVP repository

3. Install FMI Kit for Simulink

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

4. 