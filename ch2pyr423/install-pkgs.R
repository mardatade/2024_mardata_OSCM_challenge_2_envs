
cpus <- parallel::detectCores()
options(Ncpus = cpus)

pkgs <- c ("rdrop2", "DT", "rclipboard", "imager", "shinymaterial", "shinyalert", "shinycssloaders", "shinyjs")

install.packages(pkgs, dependencies = TRUE, clean = TRUE)

verify_pkgs <- pkgs

for (pkg in verify_pkgs) {
    if ( ! library(pkg, character.only=TRUE, logical.return=TRUE) ) {
        quit(status=1, save='no')
    }
}

