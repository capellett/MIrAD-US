# How to properly include data for users of a package:
# save shared package data in data/ with usethis::use_data(data)
# document the quoted name of the dataset and save it in R/ like this:
#' @title A sample example of a very good dataset.
#' @description A tidy table of things
#' @format a dataframe with two awesome columns and some really cool rows.
#' \describe{
#'   \item{Awesome}{awesomeness, in liters of blood, sweat, and tears}
#'   \item{Cool}{coolness, in kilocool points}
#'   ...
#' }
#' @source I found it on the floor.
"exampleData"

## Save internal data for functions in R/sysdata.rda
## devtools::use_data(data, internal=TRUE)
## save code to generate internal data in data-raw/

## Put raw data for examples in inst/extdata.
## Everything in inst/ is moved up to the top
## level directory of the package when the package is installed.
## (so they can’t have names like R/ or DESCRIPTION).
## To refer to files in inst/extdata (whether installed or not):
# system.file("extdata", "example.csv", package = "examplePackage",
#             mustWork=TRUE) # throws error if file is not found.
## [1] "/home/user/R/Library/WaterPlanningTools/extdata/example.csv"

## make sure that the data has been optimally compressed:
# tools::checkRdaFiles() ## to determine the best compression for each file.
# devtools::use_data() ## with compress set to that optimal value.
## If you’ve lost the code for recreating the files, use
# tools::resaveRdaFiles() ## to re-save in place.
