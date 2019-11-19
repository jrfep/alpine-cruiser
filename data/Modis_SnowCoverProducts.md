https://nsidc.org/data/mod10c2/versions/6
Data Set ID:
MOD10C2
MODIS/Terra Snow Cover 8-Day L3 Global 0.05Deg CMG, Version 6

As a condition of using these data, you must cite the use of this data set using the following citation. For more information, see our Use and Copyright Web page.

Hall, D. K. and G. A. Riggs. 2016. MODIS/Terra Snow Cover 8-Day L3 Global 0.05Deg CMG, Version 6. [Indicate subset used]. Boulder, Colorado USA. NASA National Snow and Ice Data Center Distributed Active Archive Center. doi: https://doi.org/10.5067/MODIS/MOD10C2.006. [Date Accessed].

Use the "download script" button to get the python script and place it in the target folder

add login details for earthdata (jr.ferrer.paris) in ~/.netrc as follow:
machine urs.earthdata.nasa.gov login ***** password *****

 mkdir -p $GISDATA/sensores/Modis/MOD10C2/
cd $GISDATA/sensores/Modis/MOD10C2/
## mv ~/Downloads/nsidc-download_MOD10C2.006_2019-11-19.py $GISDATA/sensores/Modis/MOD10C2/

Run the python script:
python nsidc-download_MOD10C2.006_2019-11-19.py
This downloads 1806 files


gdalinfo MOD10C2.A2000049.006.2016064132927.hdf
export BAND=Eight_Day_CMG_Snow_Cover
export WEEK=A2000049

gdalwarp -of Gtiff -co COMPRESS=LZW -co TILED=YES -ot Byte -te -180.0000000 -90.0000000 180.0000000 90.0000000  -t_srs EPSG:4326 HDF4_EOS:EOS_GRID:"MOD10C2.${WEEK}.006.2016064132927.hdf":MOD_CMG_Snow_5km:${BAND} MOD10C2-${WEEK}-${BAND}.tif

cd $WORKDIR
grass -c $GISDATA/sensores/Modis/MOD10C2/MOD10C2-${WEEK}-${BAND}.tif $GISDB/MODIS_snow
r.in.gdal input=$GISDATA/sensores/Modis/MOD10C2/MOD10C2-${WEEK}-${BAND}.tif output=MOD10C2_${WEEK}_${BAND}

In google earth engine
https://developers.google.com/earth-engine/datasets/catalog/MODIS_006_MOD10A1

Hall, D. K., V. V. Salomonson, and G. A. Riggs. 2016. MODIS/Terra Snow Cover Daily L3 Global 500m Grid. Version 6. Boulder, Colorado USA: NASA National Snow and Ice Data Center Distributed Active Archive Center.
https://doi.org/10.5067/MODIS/MOD10A1.006

Global EASE-Grid 8-day Blended SSM/I and MODIS Snow Cover, Version 1
https://cmr.earthdata.nasa.gov/search/concepts/C1386250333-NSIDCV0.html

Read https://daacdata.apps.nsidc.org/pub/DATASETS/nsidc0321_blended_ssmi_modis/readme.txt
%ftp sidads.colorado.edu
     (login as anonymous, and use your e-mail address as password)
ftp>cd /pub/DATASETS/nsidc0321_blended_ssmi_modis/
ftp>get north.tar
