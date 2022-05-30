test_that("media_vol() funciona", {

  resultado_cantareira <- media_vol("Cantareira")

  expect_equal(nrow(resultado_cantareira), 1)

  expect_s3_class(resultado_cantareira, "tbl_df")

  expect_snapshot(resultado_cantareira)

  # expectativa que dê erro quando não falar qual é o sistema
  expect_error(media_vol())



})
