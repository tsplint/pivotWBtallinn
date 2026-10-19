test_that("wbfun converts World Bank data from wide to long format", {

  result <- wbfun(maternal_mortality, "maternal_mortality")

  # Check that the correct column names are in output 
  expect_equal(
    names(result),
    c("iso", "year", "maternal_mortality")
  )

  # Check that year is numeric
  expect_true(is.numeric(result$year))

  # Check that the data contains 20 years
  expect_equal(
    sort(unique(result$year)),
    2000:2019
  )

})