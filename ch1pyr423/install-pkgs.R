
cpus <- parallel::detectCores()
options(Ncpus = cpus)

pkgs <- c ("extRemes", "plyr", "methods", "copula", "MASS", "abind", "rclipboard", "shinymaterial", "shinyalert", "shinycssloaders", "shinyjs", "rsconnect")

install.packages(pkgs, dependencies = TRUE, clean = TRUE)

remotes::install_github("nstrayer/shinysense")

verify_pkgs <- c(pkgs, "shinysense")

for (pkg in verify_pkgs) {
    if ( ! library(pkg, character.only=TRUE, logical.return=TRUE) ) {
        quit(status=1, save='no')
    }
}

