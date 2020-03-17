# GMBA Mountain Inventory

Links to:
/ [Map visualization](http://www.mountainbiodiversity.org/explore)
/ [Webpage](http://www.mountainbiodiversity.org/datasets)


#### Citation
> Körner C, Jetz W, Paulsen J, Payne D, Rudmann-Maurer K, Spehn EM (2017) A global inventory of mountains for bio-geographical applications. Alpine Botany 127(1): 1-15, DOI: 10.1007/s00035-016-0182-6 and the dataset DOI: 10.7892/boris.106896
> Körner C, Paulsen J, Spehn E (2011) A definition of mountains and their bioclimatic belts for global comparisons of biodiversity data. Alpine Botany 121(2): 73-78 and the dataset DOI: 10.7892/boris.83486.

#### Data access

https://ilias.unibe.ch/goto_ilias3_unibe_cat_1000515.html
> This folder contains the GMBA mountain inventory_V1.2 data as well as zipped folders containing previous versions of the inventory (V1.0 & V1.1).
The file "General info GMBA mountain inventory_V1.2.txt" provides general information about the various files, including version, labels, formats, and a “how to cite”
To download the mountain polygons for the entire world (excluding Antarctica), please chose the file entitled “GMBA mountain inventory_V1.2_entire world”

https://ilias.unibe.ch/goto_ilias3_unibe_file_1047348_download.html

https://ilias.unibe.ch/goto.php?target=cat_1000514

> This folder contains the GMBA mountain definition_V1.1 data.
The file "General info GMBA mountain definition_V1.1.txt" provides general information about the various files, including version, resolution, labels, and formats.
To download all the available files at once, please chose the zipped folder entitled "GMBA mountain definition_V1.1"

#### Data download and preparation

Download data from ilias and then:

```bash
mkdir -p $GISDATA/biogeografia/GMBA-mountain-inventory
cd $GISDATA/biogeografia/GMBA-mountain-inventory
mv ~/Downloads/'GMBA mountain inventory_V1.2_entire world.zip' $GISDATA/biogeografia/GMBA-mountain-inventory
mv  ~/Downloads/'GMBA mountain definition_V1.1.zip (all files).zip'  $GISDATA/biogeografia/GMBA-mountain-inventory

```

Unzip the data in our working directory

```sh
cd $WORKDIR
 unzip $GISDATA/biogeografia/GMBA-mountain-inventory/GMBA\ mountain\ inventory_V1.2_entire\ world.zip
unzip $GISDATA/biogeografia/GMBA-mountain-inventory/'GMBA mountain definition_V1.1.zip (all files).zip'

## change to integer (only six distinct values) and fix limits

gdalwarp ${WORKDIR}/'GMBA mountain definition_V1.1/GMBA climatic belts_V1.1.tif' -ot Int16 -te -180 -60 180 90 GMBA_climatic_belts_V1.1.tif
gdalwarp ${WORKDIR}/'GMBA mountain definition_V1.1/GMBA mountain definition_V1.1.tif' -ot Int16 -te -180 -60 180 90 GMBA_mountain_definition_V1.1.tif


```

For the Thermal belts the map values refer to Tvzcode Labels and the belts are defined in terms of length of growing season (GS) and season mean temperature (SMT).


|map value|level|description|matching EFGs|
|---|---|---|---|
|1|Nival|GS < 10 days; SMT < 3.5 °C|T6.1|
|2|Upper alpine|10 < GS < 54; SMT < 3.5 °C|T6.5,T6.4,T6.3|
|3|Lower alpine|GS < 94; SMT < 6.4 °C|T6.5,T6.4,T6.3|
|4|Upper montane |GS >=94 days; 6.4 < SMT < 10.0 °C|T6.5,T6.4,T2.1|
|5|Lower montane |GS >=94 days; 10.0 < SMT < 15.0 °C|T6.5,T6.4|
|6|Warm, freezing|warm, possible freezing; GS >=94 days; SMT > 15 °C||
|7|Warm, no freezing|perpetual warm conditions; GS >=94 days; SMT > 15 °C||
