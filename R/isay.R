# Cmd-Shift-D: Document with Roxygen

#' say hellp
#'
#' @param size number of time to greet
#' @param ... other args passed to [sample()].
#'
#' @return a greeting
#' @export
#'
#' @examples
#'


isay <- function(size=1, ...) {
  message(praise::praise())
  h <- sample(c("Hello", "Hi", "Howdy", "What's up?"), size=size, ...)
  return(h)
}
