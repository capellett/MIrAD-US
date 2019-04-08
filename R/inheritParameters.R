# You can inherit parameter descriptions from other functions
# using @inheritParams source_function. This tag will bring
# in all documentation for parameters that are undocumented
# in the current function, but documented in the source function.
# The source can be a function in the current package, via @inheritParams
# function, or another package, via @inheritParams package::function.
# For example the following documentation:

#' @param a This is the first argument
foo <- function(a) a + 10

#' @param b This is the second argument
#' @inheritParams foo
bar <- function(a, b) {
  foo(a) * 10
}

## is equivalent to

#' @param a This is the first argument
#' @param b This is the second argument
bar <- function(a, b) {
  foo(a) * 10
}
