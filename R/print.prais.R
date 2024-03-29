#' @include prais_winsten.R
#'
#' @param x an object of class "prais", usually, a result of a call to \code{\link{prais_winsten}}.
#' @param digits the number of significant digits to use when printing.
#'
#' @export
#' @rdname prais_winsten
print.prais <- function(x, digits = max(3L, getOption("digits") - 3L), ...){
  cat("\nCall:\n", paste(deparse(x$call), sep = "\n", collapse = "\n"),
      "\n\n", sep = "")
  if (length(x$coefficients)) {
    cat("Coefficients:\n")
    print.default(format.default(x$coefficients, digits = digits),
                  print.gap = 2L, quote = FALSE)
  } else {
    cat("No coefficients\n")
  }
  if (NCOL(x$rho) == 1) {
    cat("\nAR(1) coefficient rho: ",
        format.default(c("rho" = x$rho[NROW(x$rho), "rho"]), digits = digits),
        "\n\n", sep = "")
  } else {
    rho <- data.frame("Group" = dimnames(x$rho)[[2]], "rho" = x$rho[NROW(x$rho), ])
    row.names(rho) <- NULL
    cat("\nAR(1) coefficients: \n")
    print(rho, digits = digits, row.names = FALSE, print.gap = 3L)
    cat("\n\n")
  }
  invisible(x)
}
