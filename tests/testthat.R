library(testthat)
library(slumdown)

# helper function to reset the project root for testing purposes
moveto <- function(dir) {

  # move to the specified directory
  setwd(dir)

  # now simulate what happens on loading the here package
  env <- here:::.root_env
  tryCatch(env$f <- env$crit$make_fix_file(), error = function(e) {
    env$f <- function(...) {file.path(dir, ...)}
  })
}

# temporary directories used by the installation tests
tmp <- tempdir()
dir_loc <- file.path(tmp, "slum_loc")
dir_loc2 <- file.path(tmp, "slum_loc2")
dir_rem <- file.path(tmp, "slum_rem")
dir_new <- file.path(tmp, "slum_new")

# temporary directories used by other tests
dir_null <- file.path(tmp, "slum_null")
dir_slum <- file.path(tmp, "slum_slum")
dir_fake <- file.path(tmp, "slum_fake")

# null is an empty directory (vs. fake doesn't exist)
dir.create(dir_null)

# slum is supposed to be a slumdown directory
try(new_slum(dir_slum, project = "here"), silent=TRUE)
if(!dir.exists(dir_slum)) dir.create(dir_slum)


test_check("slumdown")
