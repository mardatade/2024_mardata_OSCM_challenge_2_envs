
cpus <- parallel::detectCores()
options(Ncpus = cpus)

pkgs <- c ("netcdf4", "fields", "xml", "rlist", "R.utils")
install.packages(pkgs, dependencies = TRUE, clean = TRUE)

install.packages("osmose", repo="https://osmose-model.github.io/drat/")

verify_pkgs <- c(pkgs, "osmose")

for (pkg in verify_pkgs) {
    if ( ! library(pkg, character.only=TRUE, logical.return=TRUE) ) {
        quit(status=1, save='no')
    }
}

