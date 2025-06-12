# NIRS Dataset

This repository contains files from the NIRS Dataset.The data was gathered with a SPECIM FX-17 camera for 15 fabrics in 5 categories, 100% cotton, 100% polyester, 100% Nylon, and blends of Cotton/Polyester and Poly/Spandex.If you could like to know more about the dataset, you can find our CVPR poster at [https://drive.google.com/file/d/1xpZXeok5Px5VSrVWq5ztNnpdd8RWqy29/view?usp=sharing](https://drive.google.com/file/d/1xpZXeok5Px5VSrVWq5ztNnpdd8RWqy29/view?usp=sharing)

How the dataset is organized:  

- The raw spectral images have hundreds of spectral values per pixel, and each pixel is a row. To reduce the data volume, the files here have grouped pixels into ranges. For example - the folder labeled “group_5_3_3” has aggregated pixels in 3x3 grids.
- Within each folder, you will find files for every fabric swatch and aggregation method. For example “[Joann_Fab_100Cotton_aggr_5_3_3_0_df.csv](https://github.com/danikagupta/DeepTextile/blob/main/group_5_3_3/Joann_Fab_100Cotton_aggr_5_3_3_0_df.csv)” is the first sample of 100% cotton, which has been processed in 3x3 grids andthe contents of the grid averaged per wavelength.  Similarly - [Joann_Fab_100Cotton_aggr_5_3_3_1_df.csv](https://github.com/danikagupta/DeepTextile/blob/main/group_5_3_3/Joann_Fab_100Cotton_aggr_5_3_3_1_df.csv) is the second swatch of 100% cotton, aggregated in exactly the same way. The text “aggr” vs “band” represent different ways that the same grid was processed.
- Each file is a CSV where the first 224 columns are the spectroscopy values at each wavelength.
