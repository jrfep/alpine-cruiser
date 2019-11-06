export WORKDIR=$HOME/tmp/GIS
export GISDB=$HOME/gisdb
export LOCATION=earth
export MAPSET=IndicativeMaps
export SCRIPTDIR=$HOME/proyectos/UNSW/gaia-gis/
export REFDIR=$HOME/Cloudstor/Shared/EFTglobalmaps
export GISDATA=$HOME/gisdata
export WEBMAPDIR=$HOME/public_html/maps
export WEBINFODIR=$HOME/public_html/mapinfo
export OUTDIR=$WORKDIR/ImpactIndicators
export ZIPDIR=$WORKDIR/ImpactGZ

export GTIFFPATH=$WORKDIR/output
export GTIFFDIR=wgs84geotiff

mkdir -p $GTIFFPATH/$GTIFFDIR
mkdir -p $WEBMAPDIR
mkdir -p $WEBINFODIR
mkdir -p $OUTDIR
mkdir -p $ZIPDIR
