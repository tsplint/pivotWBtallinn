utils::globalVariables(c("iso", "X2000", "X2019", "year"))
#' @title Convert World Bank Data from Wide to Long Format
#' @description A function that converts World Bank mortality data
#' from wide to long format, with one row per country and year.
#' @param dataname A data frame containing ISO country codes and
#' yearly columns from X2000 to X2019.
#' @param varname A character string specifying the name of the
#' mortality variable column.
#' @return A data frame containing iso, year, and the mortality variable.
#' @examples
#' wbfun(maternal_mortality, "maternal_mortality")
#' @export
wbfun <- function(dataname, varname) {
  dataname |>
    dplyr::select(iso, X2000:X2019) |>
    tidyr::pivot_longer(
      cols = dplyr::starts_with("X"),
      names_to = "year",
      names_prefix = "X", 
      values_to = varname
    ) |>
    dplyr::mutate(year = as.numeric(year)) |> 
    dplyr::arrange(iso, year)
}