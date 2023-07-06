Sys.setenv("RENV_CONFIG_PAK_ENABLED" = "TRUE")
options(
  repos = c(
    RSPM = "https://packagemanager.rstudio.com/all/latest",
    CRAN = "https://cran.rstudio.com/"
  ),
  renv.config.auto.snapshot = TRUE
)

# Since RSPM does not provide Mac binaries, always install packages from CRAN
# on mac or windows, even if renv.lock specifies they came from RSPM
if (Sys.info()[["sysname"]] %in% c("Darwin", "Windows")) {
  options(renv.config.repos.override = c(
    CRAN = "https://cran.rstudio.com/",
    INLA = "https://inla.r-inla-download.org/R/testing"
  ))
} else if (Sys.info()[["sysname"]] == "Linux") {
  options(renv.config.repos.override = c(
    RSPM = "https://packagemanager.rstudio.com/all/latest",
    INLA = "https://inla.r-inla-download.org/R/testing"
  ))
}

# make renv use scratch directory if available
# and that is either where the container is or
# the code is running on SLURM
slurm_ind <- any(grepl("^SLURM_", names(Sys.getenv())))
sif_ind_app <- grepl("^/scratch", Sys.getenv("APPTAINER_CONTAINER"))
sif_ind_sing <- grepl("^/scratch", Sys.getenv("SINGULARITY_CONTAINER"))
dir_exists_ind <- dir.exists(file.path("/scratch/", Sys.getenv("USER")))
if ((slurm_ind || sif_ind_app || sif_ind_sing) && dir_exists_ind) {
  source("./scripts/R/hpc_renv_setup.R")
}
source("renv/activate.R")






# add commonly-used dev functions and attached libraries
source("./scripts/R/dev.R")
