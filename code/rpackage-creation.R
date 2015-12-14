########
## Setting up 
########


library(devtools)
library(roxygen2)
library(testthat)

# Set working directory
setwd("~/Desktop")

# Create a new package
create("mypkg")



########
## Adding a function
########

#' A dumb function
#' 
#' This dumb function does some dumb stuff like add two numbers. See also
#' \code{\link{other_dumb_function}}.
#' 
#' @param x The transformed data matrix with the variables in rows and samples in columns
#' @param y The model matrix being used to fit the data
#' @return sum The sum of the values 
#' @export
#' 

dumbfunc = function(x,y){
  sum = x+y
  return(sum)
}

########
## documenting
########

document("mypkg")
check_doc("mypkg")
dev_help("dumbfunc")


######
## loading to mess around with stuff
######

load_all("mypkg")



########
## set up testthat
########

devtools::use_testthat("mypkg")


########
## Add some tests
########

context("Test the inputs")

test_that("test first input", {
  expect_that(dumbfunc(1,3),equals(5))
})

test_that("test second input", {
  expect_that(dumbfunc(4,x),throws_error())
})


########
## Create a vignette
#####

devtools::use_vignette("my-vignette")


######
## Add some data
######

x = rnorm(10)
devtools::use_data(x)

####
## Add rcpp support
#####

devtools::use_rcpp()
