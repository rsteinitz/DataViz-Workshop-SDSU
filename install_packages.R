# ============================================================
# SDSU Data Visualization Workshop 2026
# Package Installation Script
# ============================================================
# Run this **entire** script before the workshop:
# 1. Select all the code (Ctrl+A or Cmd+A)
# 2. Click "Run" on upper right corner of your source panel (the R script panel)
# ...it will install (or update) all required packages.
# ============================================================

cat("Starting package installation...\n\n")

# Required packages for the workshop
required_packages <- c(
  "ggplot2",
  "here",
  "readr",
  "dplyr",
  "tidyr",
  "stringr",
  "lubridate",
  "forcats",
  "janitor",
  "scales",
  "patchwork"
)

# Function to install missing packages
install_if_missing <- function(pkg) {
  if (!requireNamespace(pkg, quietly = TRUE)) {
    cat("Installing:", pkg, "...\n")
    install.packages(pkg, dependencies = TRUE)
  } else {
    cat("Updating:", pkg, "...\n")
    install.packages(pkg, dependencies = TRUE)
  }
}

# Loop through packages
for (pkg in required_packages) {
  install_if_missing(pkg)
}

cat("\nPackage installation complete.\n")
cat("Please restart RStudio before the workshop.\n")
cat("============================================================\n")
