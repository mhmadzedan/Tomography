% Clear variables and initialize
clear;close all;clc;

% Define constants and variables
fPath = 'bscansnaps\6.6.lbv';  % File path for data
nScans = 136;                  % Number of scans
sLength = 8192;                % Length of each scan
sFreq = 50e6;                  % Sampling frequency (Hz)
tArray = (0:sLength-1) / sFreq; % Time vector
aSpacing = 1.75;               % Antenna spacing (mm)
wSpeed = 3250;                 % Wave speed (m/s)
maxX = 100;                    % Maximum X dimension (mm)
maxZ = 70;                     % Maximum Z dimension (mm)
resX = 0.10;                   % Spatial resolution in X (mm)
resZ = 0.10;                   % Spatial resolution in Z (mm)

% Load A-scan data from file
aScans = readAScanData(fPath, sLength, nScans);

% Calculate antenna positions
aPos = getAntennaPositions(16, aSpacing);

% Index combinations
[pIndices, posMatrix] = computeAntennaPairs(16);

% Create grid for tomography
[xGrid, zGrid, tMatrix] = createTomographyGrid(maxX, maxZ, resX, resZ);

% Precompute time indices
tIdxMatrix = precomputeTimeIndices(xGrid, zGrid, pIndices, aPos, wSpeed, sFreq, sLength);

% Generate tomography using precomputed indices
tMatrix = generateTomography(tMatrix, xGrid, zGrid, pIndices, posMatrix, aScans, tIdxMatrix);

% Normalize tomography data
tMatrix = tMatrix / nScans;

% Visualization
displayTomography(xGrid, zGrid, tMatrix, maxX, maxZ);



