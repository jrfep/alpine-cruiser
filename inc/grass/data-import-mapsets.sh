conda deactivate
cd $WORKDIR
export YEAR=2018
export BAND=lccs_class
grass74 -c CCI-LC-${YEAR}-${BAND}.tif $GISDB/ESACCI

r.in.gdal -o input=CCI-LC-${YEAR}-${BAND}.tif output=CCI-LC-${YEAR}-${BAND}
cut -d";" -f1,3,4,5 --output-delimiter=:  $GISDATA/sensores/CCI-CRDP/ESACCI-LC-Legend.csv  | sed s/:/\ / | tail -n+2 > CCI-LC.color
r.colors map=CCI-LC-${YEAR}-${BAND} rules=CCI-LC.color
