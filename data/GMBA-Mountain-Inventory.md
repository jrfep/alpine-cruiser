
# GMBA Mountain Inventory
http://www.mountainbiodiversity.org/datasets

## Set up a path for a data directory:

```bash
mkdir -p $GISDATA/biogeografia/GMBA-mountain-inventory
cd $GISDATA/biogeografia/GMBA-mountain-inventory
```
reference
https://link.springer.com/article/10.1007/s00035-016-0182-6

https://ilias.unibe.ch/goto_ilias3_unibe_cat_1000515.html

This folder contains the GMBA mountain inventory_V1.2 data as well as zipped folders containing previous versions of the inventory (V1.0 & V1.1).
The file "General info GMBA mountain inventory_V1.2.txt" provides general information about the various files, including version, labels, formats, and a “how to cite”
To download the mountain polygons for the entire world (excluding Antarctica), please chose the file entitled “GMBA mountain inventory_V1.2_entire world”
https://ilias.unibe.ch/goto_ilias3_unibe_file_1047348_download.html

```sh
 mv ~/Downloads/GMBA\ mountain\ inventory_V1.2_entire\ world.zip $GISDATA/biogeografia/GMBA-mountain-inventory

```
```sh
cd $WORKDIR
 unzip $GISDATA/biogeografia/GMBA-mountain-inventory/GMBA\ mountain\ inventory_V1.2_entire\ world.zip


```
