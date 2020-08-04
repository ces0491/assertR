testthat::test_that("assert_present correctly asserts presence of required data", {

  avl_pres <- c(1, 2, 3, 4, 5)
  req_pres <- c(1:5)

  test_present <- assert_present(avl_pres, req_pres)

  testthat::expect_true(is.null(test_present))

  avl_not_pres <- c("a", "b", "d")
  req_not_pres <- letters[1:4]

  expected_error <- "Missing elements: ('c') options are: ('a','b','d')"
  captured_error <- testthat::capture_error(assert_present(avl_not_pres, req_not_pres))

  testthat::expect_equal(captured_error$message, expected_error)

})
