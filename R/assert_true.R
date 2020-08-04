#' Assert TRUE
#'
#' @param expression expression to evaluate whether \code{TRUE} or \code{FALSE}
#' @param msg optional message to display if \code{expression} is \code{FALSE}
#'
#' @return NULL if \code{expression} evaluates to TRUE, error message otherwise
#' @export
#'
assert_true <- function(expression, msg = NULL) {

  if (is.null(msg)) {
    msg <- "expression not TRUE"
  }

  if (is.null(expression) || is.na(expression)) {
    tf <- FALSE
  } else {
    tf <- as.logical(expression)
  }

  if (!tf) {
    stop(msg)
  }

}
