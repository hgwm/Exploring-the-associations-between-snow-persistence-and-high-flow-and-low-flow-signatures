# Snow persistence is associated with stream high-flow and low-flow signatures with differing relationships by aridity and climatic seasonality
Data and Code for "Exploring the associations between snow persistence and high-flow and low-flow signatures" (Under Review)

The code, depending on IDE and how the code is opened, may need to have relative directories (as is currently set) hard coded to your system's local directory(ies). 

## Contents

**Appendix 1 - Simulation Code for Reviewer 2 Response**: This folder contains simulation code (*simulation_code_reviewer_2.R*) and plotted results as referenced in the response to Reviewer 2 for this paper (first round of peer review).

**Appendix 2 - Simulation Code for Reviwer 3 Response**: This folder contains simulation code (*simulation_code_reviewer_3.R*), data and plotted results as referenced in the response to Reviewer 3 for this paper (second round of peer review).

**Code**: This folder contains the code used to generate the plots (*plotter_sites_signatures_climatic_indices.R*) and the code to analyze the data (overall data Spearman correlational analysis - Sec 3.1: *overall_water_climate_analysis.R* and annual correlational analyses - Sec 3.2 - 3.3: *annual_water_climate_analysis.R*).

**Data**: This folder contains the overall dataset used for the paper (*water_climate_data.csv*) and annual data for the paper

**Variables/Columns Key**:

* mean_sp (sp in annual data): Snow Persistence

* mean_ai (ai in annual data): Aridity Index

* mean_si (si in annual data): Seasonality Index

* bfi: Baseflow Index

* q5Frac: Normalized Q₅

* low_fdc: Low Slope of the Flow Duration Curve

* mean_low_flow_dur: Low-Flow (Event) Duration

* q95Frac: Normalized Q₉₅

* high_fdc: High Slope of the Flow Duration Curve

* mean_high_flow_dur: High-Flow (Event) Duration
