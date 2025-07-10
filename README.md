# DeepTextile Dataset

A Near-Infrared Spectroscopy (NIRS) dataset for textile classification using hyperspectral imaging.

## Overview

The DeepTextile dataset contains hyperspectral data collected using a SPECIM FX-17 camera for textile classification research. This dataset enables machine learning approaches to automatically identify and classify different fabric types based on their spectral signatures in the near-infrared range.

## Dataset Composition

### Fabric Categories
The dataset includes spectral data for **15 different fabrics** across **5 main categories**:

- **100% Cotton**
- **100% Polyester** 
- **100% Nylon**
- **Cotton/Polyester blends**
- **Poly/Spandex blends**

### Data Collection
- **Instrument**: SPECIM FX-17 hyperspectral camera
- **Spectral Range**: Near-infrared (NIRS)
- **Spectral Resolution**: 224 wavelength bands
- **Multiple samples**: Multiple swatches per fabric type for robust classification

## Dataset Structure

### Directory Organization

```
DeepTextile/
├── group_5_3_3/           # 3x3 pixel aggregation
│   ├── Joann_Fab_100Cotton_aggr_5_3_3_0_df.csv
│   ├── Joann_Fab_100Cotton_aggr_5_3_3_1_df.csv
│   └── ...
└── [other aggregation folders]/
```

### File Naming Convention

Files follow the pattern: `[Source]_[FabricType]_[ProcessingMethod]_[AggregationParams]_[SampleNumber]_df.csv`

- **Source**: Data source (e.g., "Joann_Fab")
- **FabricType**: Fabric composition (e.g., "100Cotton", "100Polyester")
- **ProcessingMethod**: 
  - `aggr`: Averaged aggregation within pixel grids
  - `band`: Alternative band-based processing
- **AggregationParams**: Grid size parameters (e.g., "5_3_3" for 3x3 grids)
- **SampleNumber**: Sample index (0, 1, 2, ...)

### Data Format

Each CSV file contains:
- **Columns 1-224**: Spectral reflectance values at 224 wavelength bands
- **Rows**: Individual pixels or aggregated pixel regions
- **Values**: Normalized spectral intensities

### Pixel Aggregation

To manage the large volume of hyperspectral data, pixels are grouped into spatial regions:
- **Raw data**: Hundreds of spectral values per individual pixel
- **Aggregated data**: Pixels grouped into grids (e.g., 3x3) with averaged spectral values
- **Folder naming**: `group_X_Y_Z` indicates aggregation parameters

## Research Applications

This dataset supports research in:
- **Textile classification** using machine learning
- **Hyperspectral image analysis** for material identification
- **Computer vision** applications in textile industry
- **Quality control** and **authentication** of fabric materials
- **Sustainable fashion** through automated fabric sorting

## Getting Started

### Prerequisites
- Python 3.x
- pandas, numpy, scikit-learn
- matplotlib, seaborn (for visualization)
- Optional: TensorFlow/PyTorch for deep learning approaches

### Basic Usage

```python
import pandas as pd
import numpy as np

# Load a sample fabric
cotton_sample = pd.read_csv('group_5_3_3/Joann_Fab_100Cotton_aggr_5_3_3_0_df.csv')

# Extract spectral features (first 224 columns)
spectral_data = cotton_sample.iloc[:, :224]

# Basic statistics
print(f"Data shape: {spectral_data.shape}")
print(f"Wavelength bands: {spectral_data.columns.tolist()}")
```

## Citation

If you use this dataset in your research, please cite our work:

@misc{gupta2024deeptextile,
  title={DeepTextile: NIRS Dataset for Textile Classification},
  author={Danika Gupta},
  year={2024},
  howpublished={\url{https://github.com/danikagupta/DeepTextile}},
  note={Accessed: \today}
}

## Additional Resources

- **Research Poster**: [CVPR Poster](https://drive.google.com/file/d/1xpZXeok5Px5VSrVWq5ztNnpdd8RWqy29/view?usp=sharing)
- **Paper**: Link to full paper will be provided when available

## License

[Please specify the license under which this dataset is released]

## Contact

For questions about the dataset or collaboration opportunities, please contact:
- [Contact information]

## Acknowledgments

This work was supported by [funding sources] and conducted using the SPECIM FX-17 hyperspectral imaging system.

---

*Dataset collected and curated for advancing machine learning applications in textile analysis and computer vision.*
