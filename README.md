# Real Time Virtual Prototypes

## What is RTVP?

A new model exchange format that can capture geometry-based behaviour, in addition to circuit behaviour. The concept extends an existing model exchange standard, the Functional Mock-up Interface (FMI) to incorporate SPICE-like circuit models and geometrical models. Specifically designed with Power Electronics in mind, RTVP models allow complex models to be imported into commercial simulation tools such as Simulink. 

## Pre-release Examples
Download some precompiled RTVP FMUs from [DemoModels/FMU](https://github.com/plevans/RTVP/tree/master/DemoModels/FMU) and Simulink simulation models from [DemoModels/Simulink](https://github.com/plevans/RTVP/tree/master/DemoModels/Simulink).

Also download the [RTVP co-simulation tool installer](https://github.com/plevans/RTVP/releases) to run alongside the Simulink simulation visualise the RTVP-FMU models.

Further documentation is available to view [here](https://github.com/plevans/RTVP/blob/master/README.md).

## How does it work?

We use our own in-house virtual prototyping software to design the model geometry. The mesh is generated for use in the simulation. After this, an FMU export option saves a number of files ready to be used in the creation of the 3D-RTVP FMU model. Internally, Reduced-Order Modelling methods are used to maintain simulation efficiency. 

A co-simulation tool is proposed that allows the models to stream 3D visualisations of their internal state, in real-time, as the simulation progresses.

This work was presented in Grenoble, France at the 2024 IEEE Design Methodologies Conference. Refer to this publication for further details, [Real Time Virtual Prototypes for Power Electronics, *2022 IEEE Design Methodologies Conference (DMC)*](https://ieeexplore.ieee.org/document/10812139).

![result-thermal-die](https://github.com/user-attachments/assets/dbfc5c7a-6c6e-48b8-8161-073b7285b054)


## Demonstration Videos

[![Thermal RTVP Model Demonstration](https://img.youtube.com/vi/_mSFU1akNzQ/mqdefault.jpg)](https://youtu.be/_mSFU1akNzQ)
[![Electrical and Semiconductor Behavioural RTVP Model Demonstration](https://img.youtube.com/vi/9EW95Z0a7q0/mqdefault.jpg)](https://youtu.be/9EW95Z0a7q0)
[![Thermal AR Demonstration](https://img.youtube.com/vi/23DIIjWbeLg/mqdefault.jpg)](https://youtu.be/23DIIjWbeLg)
[![EM AR Demonstration](https://img.youtube.com/vi/JErHrJPMms0/mqdefault.jpg)](https://youtu.be/JErHrJPMms0)



## Related Publications
- [Real Time Virtual Prototypes for Power Electronics, *2022 IEEE Design Methodologies Conference (DMC)*](https://ieeexplore.ieee.org/document/10812139)
- [A Fast and Accurate GaN Power Transistor Model and Its Application for Electric Vehicle, *IEEE Transactions on Vehicular Technology*](https://ieeexplore.ieee.org/document/10347531/)
- [Datasheet Based SiC MOSFET Models for Accurate Switching Waveform Prediction in Virtual Prototyping Applications, *2023 IEEE Design Methodologies Conference (DMC)*](https://ieeexplore.ieee.org/document/10412452)
- [Behavioural SiC IGBT Modelling Using Non-Linear Voltage and Current Dependent Capacitances, *2023 IEEE Design Methodologies Conference (DMC)*](https://ieeexplore.ieee.org/document/10412584/)
- [Magnetic material modelling using the PEEC method and linear basis functions, *2022 IEEE Design Methodologies Conference (DMC)*](https://ieeexplore.ieee.org/document/9906541)
- [Implementation of Multi-Expansion Point Model Order Reduction for Coupled PEEC-Semiconductor Simulations, *2022 IEEE Design Methodologies Conference (DMC)*](https://ieeexplore.ieee.org/document/9906539)
- [Real-Time Electromagnetic Visualisation for Large 3D Accelerated Models", *2022 IEEE 23rd Workshop on Control and Modeling for Power Electronics (COMPEL)*](https://ieeexplore.ieee.org/document/9830033)
- [Multi Expansion Point Reduced Order Modelling for Electromagnetic Design of Power Electronics, *2021 IEEE Design Methodologies Conference (DMC)*](https://ieeexplore.ieee.org/document/9529950/)
- [Real-Time Electromagnetic Visualisation using Augmented Reality and Accelerated 3D Models", *2021 IEEE 22nd Workshop on Control and Modelling of Power Electronics (COMPEL)*](https://ieeexplore.ieee.org/document/9645933)
- [Modelling GaN-HEMT Dynamic ON-state Resistance in High Frequency Power Converter, *2020 IEEE Applied Power Electronics Conference and Exposition (APEC)*](https://ieeexplore.ieee.org/document/9124513/)
- [Real-Time Thermal Imaging Using Augmented Reality and Accelerated 3D Models," *2020 IEEE 21st Workshop on Control and Modeling for Power Electronics (COMPEL)*](https://ieeexplore.ieee.org/document/9265658)
- [Characterisation and Modeling of Gallium Nitride Power Semiconductor Devices Dynamic On-State Resistance, *IEEE Transactions on Power Electronics*](https://ieeexplore.ieee.org/document/8039282/)
- [Developing Power Semiconductor Device Model for Virtual Prototyping of Power Electronics Systems, *2016 IEEE Vehicle Power and Propulsion Conference (VPPC)*](https://ieeexplore.ieee.org/document/7791664/)
- [Design Tools for Rapid Multidomain Virtual Prototyping of Power Electronic Systems, *IEEE Transactions on Power Electronics*](https://ieeexplore.ieee.org/document/7112536/)
- [Automated Fast Extraction of Compact Thermal Models for Power Electronic Modules, *IEEE Transactions on Power Electronics*](https://ieeexplore.ieee.org/document/6395834/)

## Contact Us

For any queries, please contact [Dr Paul Evans](https://www.nottingham.ac.uk/Engineering/Departments/EEE/People/paul.evans). 
