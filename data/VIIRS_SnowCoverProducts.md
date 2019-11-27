
https://nsidc.org/data/VNP10A1/versions/1
Data Set ID:
VNP10A1
VIIRS/NPP Snow Cover Daily L3 Global 375m SIN Grid, Version 1
This data set contains daily snow cover derived from radiance data acquired by the Visible Infrared Imaging Radiometer Suite (VIIRS) on board the Suomi National Polar-orbiting Partnership (NPP) satellite. The data is a gridded composite, generated from 6 minute swaths, and projected to a 375 m Sinusoidal grid. Snow cover is identified using the Normalized Difference Snow Index (NDSI) and a series of screens designed to alleviate errors and flag uncertain snow cover detections.
As a condition of using these data, you must cite the use of this data set using the following citation. For more information, see our Use and Copyright Web page.

Riggs, G. A., D. K. Hall, and M. O. Román. 2019. VIIRS/NPP Snow Cover Daily L3 Global 375m SIN Grid, Version 1. [Indicate subset used]. Boulder, Colorado USA. NASA National Snow and Ice Data Center Distributed Active Archive Center. doi: https://doi.org/10.5067/VIIRS/VNP10A1.001. [Date Accessed].

Use the "download script" button to get the python script and place it in the target folder

add login details for earthdata (jr.ferrer.paris) in ~/.netrc as follow:
machine urs.earthdata.nasa.gov login ***** password *****

 mkdir -p $GISDATA/sensores/VIIRS/VNP10A1/
cd $GISDATA/sensores/VIIRS/VNP10A1/
## mv ~/Downloads/nsidc-download_VNP10A1.001_2019-11-26.py $GISDATA/sensoLres/VIIRS/VNP10A1/

Run the python script:
python nsidc-download_VNP10A1.001_2019-11-26.py
## 929791 matches nearly 3TB of data ! for all tiles
##but if we select a bounding box: bounding_box = '92,25,99,29', only  2859 matches and 5718 files.... ca. 30 GB

## example for Myanmar # projection not yet working fine, these are daily products, thus more cumbersome to summarize
mkdir -p ~/tmp/alpine/Myanmar/VNP10A1
cd ~/tmp/alpine/Myanmar/VNP10A1

for k in $(ls $GISDATA/sensores/VIIRS/VNP10A1/*h26v06*h5)
do
   ##take a look at gdalinfo $k
   ## GRingLatitude=19.936034 30.043859 29.999359 19.893507
   ## GRingLongitude=84.829601 92.054376 103.93619 95.76852
   for BAND in NDSI_Snow_Cover Basic_QA
   do
      export j=$(basename $k | sed -e s/.h5$/.tif/ -e s/VNP10A1/${BAND}/)

      gdal_translate -ot Byte -of Gtiff -gcp 0 0 84.829601 19.936034 -gcp 0 3000 92.054376 30.043859 -gcp 3000 3000 103.93619 29.999359 -gcp 3000 0 95.76852 19.893507  HDF5:"${k}"://HDFEOS/GRIDS/NPP_Grid_IMG_2D/Data_Fields/${BAND} test.tif
      gdalwarp -of Gtiff -co COMPRESS=LZW -co TILED=YES -ot Byte -te 96 25 99 29   -t_srs EPSG:4326 test.tif ${j}
      rm test.tif
      done
done

##gdalwarp -of Gtiff -co COMPRESS=LZW -co TILED=YES -ot Byte -te 96 25 99 29  -s_srs "+proj=sinu +lon_0=0 +x_0=0 +y_0=0 +ellps=WGS84 +datum=WGS84 +units=m +no_defs" -t_srs EPSG:4326 HDF5:"${k}"://HDFEOS/GRIDS/NPP_Grid_IMG_2D/Data_Fields/${BAND} ${j}
