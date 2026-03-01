# install.R
# Script to install all required dependencies for MolNetEnhancer-CANOPUS
required_packages <- c("shiny", "igraph", "dplyr", "httr", "jsonlite", "DT")

# Identify packages that are not yet installed
new_packages <- required_packages[!(required_packages %in% installed.packages()[,"Package"])]

# Install missing packages
if(length(new_packages)) {
  message("Installing missing packages: ", paste(new_packages, collapse = ", "))
  install.packages(new_packages, repos = "http://cran.us.r-project.org")
} else {
  message("All required packages are already installed. You are ready to run the app!")
}