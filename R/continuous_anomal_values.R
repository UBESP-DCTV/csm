#' Check continuous out-of-range values
#'
#' Check if a continuous variable takes values that are outside the
#' range defined by two numerical values. The function returns a
#' numeric vector with the values of the variable that lie outside of
#' the range.
#'
#' @param x (numeric) a numeric vector.
#'
#' @param range (numeric) a numeric vector with 2 values, i.e. the
#'                        minimum and the maximum allowed values for
#'                        `x`.
#'
#' @return (numeric) a numeric vector with all the elements of `x` that
#'                   are not within the `range`. If no value is
#'                   identified a `NA` is returned.
#'
#' @examples
#'
#' x <- rnorm(n = 10L, mean = 10, sd = 2)
#' range   <- c(3, 12)
#' csm:::continuous_anomal_values(x = x, range = range)
#'
continuous_anomal_values <- function(x = NULL, range = NULL) {

    assertive::is_not_null(x)
    assertive::is_not_null(range)
    assertive::is_numeric(x)
    assertive::is_numeric(range)

    extreme <- x[x < range[1] | x > range[2]]

    ifelse(length(extreme) == 0, NA_real_, extreme)

}

