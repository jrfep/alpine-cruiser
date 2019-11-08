conda deactivate
cd $WORKDIR
export YEAR=2018
export BAND=lccs_class
grass74 -c CCI-LC-${YEAR}-${BAND}.tif $GISDB/ESACCI

r.in.gdal -o input=CCI-LC-${YEAR}-${BAND}.tif output=CCI-LC-${YEAR}-${BAND}
cut -d";" -f1,3,4,5 --output-delimiter=:  $GISDATA/sensores/CCI-CRDP/ESACCI-LC-Legend.csv  | sed s/:/\ / | tail -n+2 > CCI-LC.color
r.colors map=CCI-LC-${YEAR}-${BAND} rules=CCI-LC.color


## snow occurrence, weekly
export BAND=snow_occ

for WEEK in $(ls snow-nc/ | cut -d"-" -f 8)
do
   gdalwarp -of Gtiff -co COMPRESS=LZW -co TILED=YES -ot Byte -te -180.0000000 -90.0000000 180.0000000 90.0000000  -t_srs EPSG:4326 NETCDF:snow-nc/ESACCI-LC-L4-Snow-Cond-500m-P13Y7D-${WEEK}-v2.0.nc:${BAND} tmp.tif
   r.in.gdal -o --overwrite input=tmp.tif output=Snow-Cond-${WEEK}-${BAND}
   rm tmp.tif
done

## january-february files have big gaps on high northern latitudes (mostly above 70° but only on continental areas, not greenland)

r.mapcalc --overwrite expression="tmp00=0"
for WEEK in $(ls snow-nc/ | cut -d"-" -f 8)
do
   r.mapcalc --overwrite expression="tmp01=(if('Snow-Cond-${WEEK}-${BAND}'>-1 & 'Snow-Cond-${WEEK}-${BAND}'<101,'Snow-Cond-${WEEK}-${BAND}',0))"
   r.mapcalc --overwrite expression="tmp00=tmp00+tmp01"
done
