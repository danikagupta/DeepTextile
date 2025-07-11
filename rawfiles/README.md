# Rawfiles

This folder contains the original hyperspectral image files captured by the SPECIM FX-17 camera, organized by fabric type.

## Folder Structure

The rawfiles directory is organized into subdirectories by fabric category:

```
rawfiles/
├── 100Cotton/
├── 100Nylon/
├── 100Poly/
├── PolyCottonBlends/
├── PolySpandexBlends/
└── .DS_Store
```

## File Organization

Each fabric category folder contains the same file structure with the following file types:

### File Types per Sample

For each fabric sample (e.g., `Joann_Fab_100Cotton`), you will find:

- **`.raw` files**: Original hyperspectral data files from the SPECIM FX-17 camera
  - `[Sample_Name].raw` - Main hyperspectral data
  - `DARKREF_[Sample_Name].raw` - Dark reference calibration file
  - `WHITEREF_[Sample_Name].raw` - White reference calibration file

- **`.hdr` files**: Header files containing metadata and calibration information
  - `[Sample_Name].hdr` - Main header file
  - `DARKREF_[Sample_Name].hdr` - Dark reference header
  - `WHITEREF_[Sample_Name].hdr` - White reference header

- **`.log` files**: Processing and acquisition log files
  - `[Sample_Name].log` - Acquisition log and parameters

### Example from 100Cotton folder:
- `Joann_Fab_100Cotton.raw` / `.hdr` / `.log`
- `DARKREF_Joann_Fab_100Cotton.raw` / `.hdr`
- `WHITEREF_Joann_Fab_100Cotton.raw` / `.hdr`

## File Storage

**Note**: Raw files are stored using Git LFS (Large File Storage) due to their large size, as indicated by the commit messages "Add .raw files via Git LFS".

## Calibration Files

Each sample includes calibration references essential for proper hyperspectral data processing:

- **DARKREF**: Dark reference measurements for sensor noise correction
- **WHITEREF**: White reference measurements for reflectance calibration

## Usage

These raw files can be processed using hyperspectral imaging software to:
- Extract spectral signatures
- Perform radiometric corrections using the reference files
- Generate the processed CSV datasets found in the main repository folders

## Relationship to Processed Data

The processed CSV files in folders like `group_5_3_3/` are derived from these raw files through:
1. Pixel aggregation (e.g., 3x3 grids)
2. Spectral averaging and CSV export

## Technical Specifications

- **Instrument**: SPECIM FX-17 hyperspectral camera
- **Format**: Native SPECIM .raw format with accompanying .hdr metadata
- **Calibration**: Includes dark and white reference measurements
- **Storage**: Git LFS for efficient version control of large binary files
