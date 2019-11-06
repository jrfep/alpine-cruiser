#

mkdir -p $GISDATA/sensores/CCI-CRDP
cd $GISDATA/sensores/CCI-CRDP

# Land Cover Maps - v2.0.7

##Data available at:
http://maps.elie.ucl.ac.be/CCI/viewer/download.php

##Documentation
Each pixel value corresponds to the label of a land cover class defined based on the UN Land Cover Classification System (LCCS). LCCS classifiers support the further conversion into Plant Functional Types distribution required by the Earth System Models. The typology counts 22 classes.

The 24 LC maps series is delivered along with 4 quality flags which document the products:

qualityflag1 pixel has been processed or not,
qualityflag2 pixel status as defined by the pre-processing,
qualityflag3 number of valid observations available to derive the classification,
qualityflag4 number of land cover changes detected over the 24 years.
These 4 quality flags document the full time series and are not year specific.

These maps are derived from a unique baseline LC map which is generated thanks to a classification chain applied on the entire MERIS FR and RR archive from 2003 to 2012.

Independently from this baseline, LC changes are detected at 1 km based on a time series of annual global classifications generated from AVHRR HRPT (1992 - 1999), SPOT-Vegetation (1999 - 2012) and PROBA-V (2013 - 2015). Systematic analysis of the temporal trajectory of each pixel allowed depicting the major changes for a simplified land cover typology matching the IPCC classes. These classes are: cropland, forest, grassland, wetlands, settlements and other lands; the latter class being further split into shrubland, sparse vegetation, bare area and water.

When MERIS FR or PROBA-V time series are available, the changes detected at 1km are re-mapped at 300 meters. The last step consists in back- and up-dating the 10-year baseline LC map to produce the 24 annual LC maps from 1992 to 2015.

The ESACCI-LC for Sen2Cor data package is prepared for users of Sen2Cor version ≥ 2.5 who wants to benefit from the last improvements of Sen2Cor Cloud Screening and Classification module. This auxiliary data information is used in Sen2Cor to improve the accuracy of Sen2Cor classification over water, urban and bare areas and also to have a better handling of false detection of snow pixels. The user of Sen2Cor version ≥ 2.5 should download and extract the zip file at this location of Sen2Cor installation: $SEN2COR_BIN/aux_data.
## Data download

LC maps full 1992-2015 series, 1 netcdf file, 24 bands, zip compression - 55.8Go:

wget ftp://geo10.elie.ucl.ac.be/v207/ESACCI-LC-L4-LCCS-Map-300m-P1Y-1992_2015-v2.0.7b.nc.zip

legend:
wget http://maps.elie.ucl.ac.be/CCI/viewer/download/ESACCI-LC-Legend.csv
wget http://maps.elie.ucl.ac.be/CCI/viewer/download/ESACCI-LCMapsColorLegend.qml

# Water Bodies - v4.0
The CCI WB v4.0 is composed of two layers:

1. A static map of open water bodies at 150 m spatial resolution resulting from a compilation and editions of land/water classifications: the Envisat ASAR water bodies indicator, a sub-dataset from the Global Forest Change 2000 - 2012 and the Global Inland Water product.

This product is delivered at 150 m as a stand-alone product but it is consistant with class "Water Bodies" of the annual LC Maps. The product was resampled to 300 m using an average algorithm. Legend : 1-Land, 2-Water

2. A static map with the distinction between ocean and inland water is now available at 150 m spatial resolution. It is fully consistent with the CCI WB-Map v4.0. Legend: 0-Ocean, 1-Land.

To cite the CCI WB-Map v4.0, please refer to this reference.
##Data download
Water Bodies v4.0 (netcdf) - 127Mo
wget ftp://geo10.elie.ucl.ac.be/CCI/ESACCI-LC-L4-WB-Map-150m-P13Y-2000-v4.0.nc

# Land Surface Seasonality products
On a per pixel basis, these climatological variables reflect, along the year, the average trajectory and the inter-annual variability of a land surface feature over the 1999-2012 period. They are built from existing long-term global datasets with high temporal frequency and moderate spatial resolution (500m-1km). They result from a compilation of 14 years of 7-day instantaneous observations into 1 temporarily aggregated profile depicting, along the year, the reference behaviour for the vegetation greenness, the snow and the BA at global scale. These products are referred to as condition products in the product user guide.

User guide
wget http://maps.elie.ucl.ac.be/CCI/viewer/download/ESACCI-LC-QuickUserGuide-LS-Seasonality_August2014.pdf

## Vegetation greenness
## Snow occurrence
## Burned areas occurrence