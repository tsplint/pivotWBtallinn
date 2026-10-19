#' @title Maternal Mortality Data
#' @description World Bank maternal mortality data for countries
#' from 2000 to 2019, stored in wide format.
#'
#' @docType data
#' @format A data frame containing the following variables:
#' \describe{
#'   \item{iso}{Country ISO code}
#'   \item{indicator}{World Bank indicator name}
#'   \item{X2000, X2001, X2002, X2003, X2004, X2005, X2006, X2007, X2008, X2009, X2010, X2011, X2012, X2013, X2014, X2015, X2016, X2017, X2018, X2019}{Maternal mortality values for each year from 2000 to 2019}
#' }
#' @source [World Bank Maternal Mortality Data](https://data.worldbank.org/indicator/SH.STA.MMRT)
#'
"maternal_mortality"