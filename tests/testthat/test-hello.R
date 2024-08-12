# https://blog.stephenturner.us/p/r-package-development-in-positron

test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})
test_that("isay", {
  expect_message(res <- isay())
  expect_identical(length(res), 1L)
  expect_message(res <- isay(50, replace = TRUE))
  expect_identical(length(res), 50L)
  expect_error(isay(50))
})
