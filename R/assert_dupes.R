#' Assert Duplicates
#'
#' @param x vector of values to test for duplicates
#' @param remove_na logical indicating whether to remove \code{NA} values - default to TRUE
#'
#' @return NULL if no duplicates in \code{x}, error message otherwise
#' @export
#'
assert_duplicates <- function(x, remove_na = TRUE) {

  if (remove_na) {
    x <- stats::na.omit(x)
  }

  dupes <- x[which(duplicated(x))]

  dupes_str <- paste(dupes, collapse = "','")
  dupes_str <- paste0("'", dupes_str, "'")

  if (length(dupes) > 0) {
    msg <- paste0("Duplicate values: ", dupes_str)
    stop(msg)
  }

}
