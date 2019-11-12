Dataset Description
The Randolph Glacier Inventory (RGI 6.0) is a global inventory of glacier outlines. It is supplemental to the Global Land Ice Measurements from Space initiative (GLIMS). Production of the RGI was motivated by the Fifth Assessment Report of the Intergovernmental Panel on Climate Change (IPCC AR5). Future updates will be made to the RGI and the GLIMS Glacier Database in parallel during a transition period. As all these data are incorporated into the GLIMS Glacier Database and as download tools are developed to obtain GLIMS data in the RGI data format, the RGI will evolve into a downloadable subset of GLIMS, offering complete one-time coverage, version control, and a standard set of attributes.

For more details, and for a complete list of contributors, please see the RGI 6.0 Technical Report (PDF format). For the glacier regions used see the GTN-G Glacier Regions.

Citation
RGI Consortium (2017). Randolph Glacier Inventory – A Dataset of Global Glacier Outlines: Version 6.0: Technical Report, Global Land Ice Measurements from Space, Colorado, USA. Digital Media. DOI: https://doi.org/10.7265/N5-RGI-60
Release History
RGI Version 1.0: released Feb 22, 2012
RGI Version 2.0: released June 12, 2012. Version 2.0 includes metadata on data sources, outlining techniques and incorporates newly available outlines.
RGI Version 3.0: released April 7, 2013. Version 3.0 includes identification of all tidewater basins and delineation of glaciers from glacier complexes in nearly all regions.
RGI Version 3.2: released August 31, 2013.
RGI Version 4.0: released December 1, 2014.
RGI Version 5.0: released July 20, 2015.
RGI Version 6.0: released July 28, 2017.
Data Access
Get the RGI 6.0 (Recommended)
mkdir -p $GISDATA/censos/Randolph-Glacier-Inventory
cd $GISDATA/censos/Randolph-Glacier-Inventory
wget --continue https://www.glims.org/RGI/rgi60_files/00_rgi60.zip
 unzip 00_rgi60.zip
  unzip 00_rgi60_attribs.zip
 unzip 16_rgi60_LowLatitudes.zip

grep RGI60-16.013[8-9] 16_rgi60_LowLatitudes.csv  
