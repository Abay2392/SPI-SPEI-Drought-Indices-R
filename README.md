# SPI-SPEI-Drought-Indices-R
R workflow for computing multi-scale SPI and SPEI drought indices for Catania using rainfall, evapotranspiration, climatic water balance, time-series plotting, and minimum drought value extraction.
# SPI and SPEI Drought Indices Computation in R

## Overview

This repository contains an R workflow for computing the Standardized Precipitation Index (SPI) and the Standardized Precipitation Evapotranspiration Index (SPEI) for drought monitoring and analysis.

The workflow was developed for Catania, Sicily, using monthly rainfall and reference evapotranspiration data from 1951 to 2023.

The code calculates SPI and SPEI at multiple accumulation time scales, plots drought index time series, identifies annual minimum drought values, and exports the results to Excel.

---

## Main Script

### SPI_SPEI_Catania_R.R

This is the main R script for computing SPI and SPEI.

The script performs:

* Reading monthly rainfall and evapotranspiration data from Excel
* Computing climatic water balance
* Calculating SPEI at multiple time scales
* Calculating SPI at multiple time scales
* Creating monthly time-series objects
* Plotting SPI and SPEI drought index time series
* Adding drought severity threshold lines
* Extracting minimum annual SPI and SPEI values
* Exporting minimum drought values to Excel

---

## Input Data

The workflow uses an Excel file containing monthly climate data.

### Input file

```text
SPI.xlsx
```

Expected variables include:

```text
CT_RF
CT_Eto
```

where:

* `CT_RF` = monthly rainfall for Catania
* `CT_Eto` = monthly reference evapotranspiration for Catania

---

## Climatic Water Balance

SPEI is calculated using climatic water balance:

```text
Climatic Water Balance = Rainfall − Reference Evapotranspiration
```

In the R script:

```r
BAL_CT = SPI$CT_RF - SPI$CT_Eto
```

---

## Drought Indices

## Standardized Precipitation Index

SPI is calculated using rainfall only.

The script computes:

```text
SPI-1
SPI-3
SPI-6
SPI-9
SPI-12
SPI-24
```

## Standardized Precipitation Evapotranspiration Index

SPEI is calculated using climatic water balance.

The script computes:

```text
SPEI-1
SPEI-3
SPEI-6
SPEI-9
SPEI-12
SPEI-24
```

---

## Time Period

The analysis period is:

```text
January 1951 – December 2023
```

Monthly time series are created using:

```r
ts(..., start = c(1951, 1), frequency = 12)
```

---

## Drought Severity Thresholds

The plots include common drought severity thresholds:

```text
-1.0  = Moderate drought
-1.5  = Severe drought
-2.0  = Extreme drought
```

These thresholds are plotted as horizontal reference lines on each SPI and SPEI time series.

---

## Outputs

The workflow generates:

### SPI Time Series

* Catania SPI-1
* Catania SPI-3
* Catania SPI-6
* Catania SPI-9
* Catania SPI-12
* Catania SPI-24

### SPEI Time Series

* Catania SPEI-1
* Catania SPEI-3
* Catania SPEI-6
* Catania SPEI-9
* Catania SPEI-12
* Catania SPEI-24

### Minimum Drought Values

Annual minimum values are extracted for each index and time scale.

The output is exported to:

```text
minimum_values.xlsx
```

---

## R Packages Required

```text
readxl
SPEI
xlsx
```

Install packages using:

```r
install.packages(c("readxl", "SPEI", "xlsx"))
```

---

## Applications

This workflow can be used for:

* Meteorological drought monitoring
* Agricultural drought assessment
* Hydrological drought analysis
* Climate variability studies
* Drought severity assessment
* Time-series drought characterization
* Comparing rainfall-only and water-balance drought indices

---

## Author

Dr. Tagele Mossie Aschale

---

## Citation

If you use this code, please cite the associated publication or acknowledge this repository.
