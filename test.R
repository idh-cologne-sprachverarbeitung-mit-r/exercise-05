library(testthat)

source("R/exercise.R")

test_that("ATM works correctly", {
	r <- atm(50)
	expect_length(r, 7)
	expect_named(r)
	expect_equal(names(r), c("500", "200", "100", "50", "20", "10", "5"))
	expect_equal(r, list(`500` = 0, `200` = 0, `100` = 0, `50` = 1, `20` = 0, `10` = 0, 
    `5` = 0))
	
	r <- atm(90)
	expect_length(r, 7)
	expect_named(r)
	expect_equal(names(r), c("500", "200", "100", "50", "20", "10", "5"))
	expect_equal(r, list(`500` = 0, `200` = 0, `100` = 0, `50` = 1, `20` = 2, `10` = 0, 
    `5` = 0))
	
	r <- atm(2520)
	expect_length(r, 7)
	expect_named(r)
	expect_equal(names(r), c("500", "200", "100", "50", "20", "10", "5"))
	expect_equal(r, list(`500` = 5, `200` = 0, `100` = 0, `50` = 0, `20` = 1, `10` = 0, 
    `5` = 0))
})

test_that("Observed agreement is calculated correctly", {
	expect_equal(po(devmatrix), 0.378, tolerance=1e-3)
})

test_that("Expected agreement is calculated correctly", {
	expect_equal(pe(devmatrix), 1.213, tolerance=1e-3)
})