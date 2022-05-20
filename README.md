# DataTidyACSClinical

The goal of `DataTidyACSClinical` is to provide easy, documented access to the ACS clinical dataset.

The processing is actually performed in `FredHutch/TuberculomicsCompendium`, but that package is at present restricted to Tuberculomics members and so we make available the `clinical_data` dataset from there here for in-SATVI use.

## Installation

To install the latest version of `DataTidyACSClinical` from [GitHub](https://github.com/), run the following:

``` r
if (!requireNamespace("remotes", quietly = TRUE)) install.packages("remotes")
remotes::install_github("SATVILab/DataTidyACSClinical")
```

## Data sets

The following datasets are available:
```{r , results = "asis", echo = FALSE}
data_tbl <- tibble::tibble(
  Dataset = c(
    "data_tidy_clinical", 
    "data_tidy_acs_participants"
  ),
  Description = c(
    "Full ACS clinical dataset",
    "List of progressors and matched controllers with progression status"
  )
)
pander::pandoc.table(data_tbl)
```

Use `?DataTidyACSClinical::<dataset_name>` to see documentation for each dataset.

## Project structure

The data are processed using `Rmd` files inside `data-raw/`.