## only northern hemisphere
GeoTiff
https://www.natice.noaa.gov/ims/geotiff_v3_p1.html

mkdir $GISDATA/sensores/NIC-IMS
cd $GISDATA/sensores/NIC-IMS
for k in $(seq 20141202 20141231)
do
   wget --continue https://www.natice.noaa.gov/pub/ims/ims_v3/imstif/1km/2014/NIC.IMS_v3_${k}_1km.tif.gz
done

cd $WORKDIR
gunzip $GISDATA/sensores/NIC-IMS/NIC.IMS_v3_${k}_1km.tif.gz
gdalinfo $GISDATA/sensores/NIC-IMS/NIC.IMS_v3_20141231_1km.tif

conda deactivate
grass -c $GISDATA/sensores/NIC-IMS/NIC.IMS_v3_20141231_1km.tif $GISDB/NIC_IMS
r.in.gdal input=$GISDATA/sensores/NIC-IMS/NIC.IMS_v3_20141231_1km.tif output=NIC_IMS_v3_20141231_1km
