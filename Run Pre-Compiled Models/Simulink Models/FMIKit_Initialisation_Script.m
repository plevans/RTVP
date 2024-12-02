% Run this script before opening the simulink models
% Will download and initialise FMI Kit which is needed to run the RTVP
% models (as they require FMI v3.0)
% 
% Taken from: 
% https://github.com/CATIA-Systems/FMIKit-Simulink

% download and extract the distribution archive to the current folder
unzip(['https://github.com/CATIA-Systems/FMIKit-Simulink/releases/' ...
  'download/v3.1/FMIKit-Simulink-3.1.zip'], 'FMIKit-Simulink-3.1')

% add the folder to the MATLAB path
addpath(fullfile(pwd, 'FMIKit-Simulink-3.1'))

% initialize FMI Kit
FMIKit.initialize()