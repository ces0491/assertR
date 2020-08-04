testthat::test_that("assert_duplicate correctly asserts presence of duplicate data", {

  x <- c(1, 2, 3, 4, 5)

  test_dupes <- assert_duplicates(x)

  testthat::expect_true(is.null(test_dupes))

  y <- c("a", "b", "d", "d")

  expected_error <- "Duplicate values: 'd'"
  captured_error <- testthat::capture_error(assert_duplicates(y))

  testthat::expect_equal(captured_error$message, expected_error)

})
