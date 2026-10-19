
# pivotWBtallinn

<!-- badges: start -->
<!-- badges: end -->

The goal of pivotWBtallinn is to convert World Bank data from wide to long format, organizing data by country and year to make it easier to analyze.

## Installation

You can install the development version of pivotWBtallinn from Github:

``` r
remotes::install_github("tsplint/pivotWBtallinn")
```

## Example

This example demonstrates how to use wbfun() to convert World Bank maternal mortality data from wide to long format.

``` r
library(pivotWBtallinn)
data("maternal_mortality")
#Then use wbfun() to reshape the data:
maternal_long <- wbfun(maternal_mortality, "maternal_mortality")
head(maternal_long)
## basic example code
```

The resulting dataset contains three columns:

iso: Country ISO code

year: Year (2000–2019)

maternal_mortality: Maternal mortality values

## Documentation

For more information about the function and example dataset:

?wbfun
?maternal_mortality

## Source
Maternal mortality data were obtained from the World Bank: https://data.worldbank.org/indicator/SH.STA.MMRT 