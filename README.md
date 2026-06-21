# Tomography

Tomography is a MATLAB-based reconstruction project for processing A-scan sensing data and generating 2D subsurface images. The workflow uses a 16-antenna array, precomputed time-delay indices, and dense X-Z grid mapping to reconstruct signal intensity and visualize internal structures or buried targets.

## Overview

This project focuses on:

- A-scan signal processing
- antenna-pair modeling
- time-index precomputation
- tomographic reconstruction
- 2D scientific visualization

The implementation is designed to read measurement data, calculate propagation paths for multiple antenna pairs, reconstruct the response over a spatial grid, and display the resulting tomography map.

## Main Features

- MATLAB-based end-to-end tomography workflow
- support for 16-antenna pair combinations
- precomputed delay-index matrix for faster reconstruction
- dense X-Z spatial grid generation
- 2D visualization of reconstructed response
- modular function structure for easier extension and testing

## Project Workflow

1. Load A-scan data from measurement files.
2. Define antenna positions and generate antenna-pair combinations.
3. Create the tomography grid in X and Z directions.
4. Precompute time-delay indices for all grid points and antenna pairs.
5. Reconstruct the tomography matrix from measured signals.
6. Normalize and visualize the final result.

## Repository Structure

Typical main files:

- `ProjectZedan.m` – main MATLAB script
- `readAScanData.m` – data loading
- `getAntennaPositions.m` – antenna geometry generation
- `computeAntennaPairs.m` – antenna-pair indexing
- `createTomographyGrid.m` – spatial grid creation
- `precomputeTimeIndices.m` – delay-index generation
- `generateTomography.m` – tomography reconstruction
- `displayTomography.m` – visualization

Supporting folders may include:

- `bscansnaps/` – input measurement data
- `txts/` – project notes and alternative script versions

## Requirements

- MATLAB
- A-scan measurement data in the expected input format

## Usage

Clone the repository:

```bash
git clone git@github.com:mhmadzedan/Tomography.git
cd Tomography
```

Open MATLAB and run:

```matlab
ProjectZedan
```

If needed, update the input file path and reconstruction parameters inside the script before running.

## Parameters

Key configurable parameters include:

- number of scans
- scan length
- sampling frequency
- antenna spacing
- wave speed
- X/Z reconstruction limits
- spatial resolution

These parameters directly affect reconstruction quality, processing time, and visualization detail.

## Output

The project produces a 2D tomography visualization showing reconstructed signal intensity over the scanned region. This can be used for analysis of internal structures, reflections, or target localization in the inspected medium.

## Applications

Possible application areas:

- subsurface imaging
- non-destructive testing
- radar-based reconstruction research
- signal-processing experiments
- scientific and engineering visualization

## Author

Mohammad Zedan

