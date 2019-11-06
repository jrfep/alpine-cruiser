# Preliminary global assessment of degradation and protection of Ecosystem Functional Groups

## Introduction

A global ecosystem typology shaped around robust design principles is essential information infrastructure for well-informed decisions to achieve dual, internationally mandated goals of conserving biodiversity and sustaining ecosystem services. These overarching goals require parties to the United Nations Convention on Biological Diversity to report on progress towards the [Aichi Targets at the Conference of Parties in 2020](https://www.cbd.int/sp/targets/).

We undertook a global-scale assessment of ecosystem degradation ([Target 5](https://www.cbd.int/doc/strategic-plan/targets/T5-quick-guide-en.pdf)), some of its causes and protective action ([Target 11](https://www.cbd.int/doc/strategic-plan/targets/T5-quick-guide-en.pdf)) using available data on the distribution of ecosystem functional groups, spatial patterns in ecosystem stressors and the distribution of protected areas.

## Methods

We undertook preliminary spatial analysis to examine the degradation and protection of Ecosystem Functional Groups (EFGs, Level 3 of the global ecosystem typology) across terrestrial, freshwater and marine realms of the biosphere. We excluded from the analysis functional groups within the subterranean realm, those within anthropogenic biomes and a small number of groups in other realms. In these cases, the main pressures causing degradation were not adequately represented by available indicators or else the boundaries of protected areas were not relevant to an assessment of protection status. Thus, our analysis is restricted to 80 of 88 “natural” or “semi-natural” EFGs. We used spatial data compiled from a range of sources (see Appendix S4 for details) to describe the indicative distributions of EFGs, acknowledging that, for most EFGs, these provide coarse-scale representations for most groups.

To summarize impacts of ecosystem degradation, we analysed two composite indicators of impact: the terrestrial human footprint (HFP) (Venter et al. 2016) and the marine cumulative human impact (MCHI) (Halpern et al. 2015). We used a new version of the HFP updated to 2013 (data courtesy of O. Venter), superseding the published version based on data for 2009. These composite indicators are not equally relevant to all EFGs but allow a general comparison across the biosphere. We applied the human footprint data to EFGs of the terrestrial, freshwater and associated transitional realms (T, F, TF, MTF, TM, MF), and the marine cumulative human impact data to EFGs within the marine and associated transitional realms (M, MT, MFT, MF). Both indicators measure impact in a positive, continuous scale with a minimum value of zero (no impact) and a right-skewed distribution. We estimated the proportion of area of each EFG affected by degradation using spatial intersections with the two indicators based on thresholds of HFP=3.5 and MCHI=2.6 to classify areas as “wild” or “degraded” in each realm, these thresholds represent the mean of the log-transformed raw values.

We also intersected the indicative maps of each terrestrial EFG (T, TF, TM, MTF) with spatial data for pastures, crops (general and rice) and urban areas derived from an analysis of anthropogenic biomes of the world (Ellis et al 2010). From these, we estimated the proportion of degraded areas that show evidence of transformation into artificial or human dominated ecosystems (see Appendix S4 for description of anthropogenic Ecosystem Functional Groups). For freshwater and marine EFGs, no suitable indicators of transformation are yet available. For marine areas the fraction of transformed areas is likely to be small, except for habitats on the shore.

To assess protection status, we analysed the spatial intersection of the World Database on Protected Areas (WDPA) with indicative distribution maps of the EFGs (Appendix S4) to estimate the proportion of EFG indicative distribution maps. We analyses ecosystem representation in protected areas classified in IUCN categories I to IV, and designated at the regional, national or international level. We summarized the areas of wild, protected and degraded or transformed areas for each EFG in Sankey charts.

We acknowledge several limitations of the HFP and MCHI, including: i) the reliance on measures of pressures, rather than measures of their impact; ii) the limited scope of the indices, which exclude some types of pressures; iii) structural constraints on the indices imposed by use of indirect proxies for some pressures; and iv) incomplete data sets for included variables (Halpern et al.2015; Venter et al 2016). However, we considered the data sufficient for our demonstrative purposes and for inferences about very general patterns in the global status of ecosystems, except where stated. We used our results to suggest an agenda for improving data quality for future assessments.

## Citation:
This source code is part of the publication:

David A. Keith, Jose R. Ferrer, Emily Nicholson, Melanie J. Bishop, Beth A. Polidoro, Eva Ramirez-Llodra, Mark G. Tozer, Jeanne L. Nel, Ralph Mac Nally, Edward J. Gregr, Kate E. Watermeyer, Franz Essl, Don Faber-Langendoen, Janet Franklin, Caroline E. R. Lehmann, Andres Etter, Dirk Roux, Jonathan S. Stark, Jessica A. Rowland, Neil A. Brummitt, Ulla C. Fernandez-Arcaya, Iain M. Suthers, Susan K. Wiser, Ian Donohue, Leland J. Jackson, R. Toby Pennington, Nathalie Pettorelli, Angela Andrade, Arild Lindgaard, Teemu Tahvanainan, Aleks Terauds, James E. M. Watson , Michael A Chadwick, Nicholas J. Murray, Justin Moat, Patricio Pliscoff, Irene Zager, Richard T. Kingsford

‘Earth’s ecosystems: a function-based typology for conservation and sustainable management’

(*in preparation*)

## How to use these files

First set up the environment variables (**env** folder). The project workflow is described in the **workflow** folder, the **data** and **input** folders describe the data sources and the **inc** folder includes scripts and functions used for several tasks. Output is located in the **web** and **doc** folders.


## Branches
* master: does the magic. The only commits to master are merges from other branches
* dont-panic: day-to-day local work.
* mostly-harmless: experimental tricks and features (what can go wrong?)
* alpha-centaury: home of small furry creatures
