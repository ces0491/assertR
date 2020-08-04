#' Assert Present
#'
#' @param available vector of values to test against vector \code{required}
#' @param required vector of required values
#'
#' @return NULL if \code{required} values in \code{available}, error message otherwise
#' @export
#'
assert_present <- function(available, required) {

  test_if_match <- required %in% available

  if (!all(test_if_match)) {
    missing_vals <- required[!test_if_match]

    missing_str <- paste(missing_vals, collapse = "','")
    missing_str <- paste("('", missing_str, "')", sep = "")

    available_str <- paste(available, collapse = "','")
    available_str <- paste("('", available_str, "')", sep = "")

    msg <- paste0("Missing elements: ", missing_str, " options are: ", available_str)
    stop(msg)
  }
}
