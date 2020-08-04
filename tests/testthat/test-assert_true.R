testthat::test_that("assert_true correctly asserts trueness of expression", {

  x <- 2
  y <- 3

  test_true <- assert_true(y > x)

  testthat::expect_true(is.null(test_true))

  testthat::expect_error(assert_true(x > y), "expression not TRUE")

})

