test_that("uss_make_matches works", {

  # use the function
  italy <- uss_make_matches(engsoccerdata::italy, "Italy")

  # Check that the result is a tibble
  expect_true(tibble::is_tibble(italy))

  # Check that the result dataframe contains the columns of interest
  expect_named(italy, c("country", "tier", "season", "date", "home", "visitor", "goals_home", "goals_visitor"))

  # Check that the "country" column is correctly filled
  expect_identical(unique(italy$country), "Italy")
})
