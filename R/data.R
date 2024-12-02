#' Barium
#'
#' Monthly microeconomic data from the U.S. chemical industry from February 1978
#' to December 1988 as used in Krupp and Pollard (1996) and subsequently re-used
#' by Wooldridge (2000) as a textbook dataset. Raw data was obtained from
#' \url{http://fmwww.bc.edu/ec-p/data/wooldridge/barium.dta}.
#'
#' @usage data("barium")
#'
#' @format A data frame with 131 rows and 31 variables:
#' \describe{
#'   \item{chnimp}{Chinese imports, bar. chl.}
#'   \item{bchlimp}{Total imports, bar. chl.}
#'   \item{befile6}{Dummy varialbe, which is 1 for all six months before filing.}
#'   \item{affile6}{Dummy varialbe, which is 1 for all six months after filing.}
#'   \item{afdec6}{Dummy varialbe, which is 1 for all six months after decision}
#'   \item{befile12}{Dummy varialbe, which is 1 for all twelve months before filing.}
#'   \item{affile12}{Dummy varialbe, which is 1 for all twelve months after filing.}
#'   \item{afdec12}{Dummy varialbe, which is 1 for all twelve months after decision.}
#'   \item{chempi}{Chemical production index.}
#'   \item{gas}{Gasoline production.}
#'   \item{rtwex}{Exchange rate index.}
#'   \item{spr}{Dummy varialbe, which is 1 for spring months.}
#'   \item{sum}{Dummy varialbe, which is 1 for summer months.}
#'   \item{fall}{Dummy varialbe, which is 1 for fall months.}
#'   \item{lchnimp}{Log of chnimp.}
#'   \item{lgas}{Log of gas.}
#'   \item{lrtwex}{Log of rtwex.}
#'   \item{lchempi}{Log of chempi.}
#'   \item{t}{Time trend.}
#'   \item{feb}{Dummy varialbe for February.}
#'   \item{mar}{Dummy varialbe for March.}
#'   \item{apr}{Dummy varialbe for April.}
#'   \item{may}{Dummy varialbe for May.}
#'   \item{jun}{Dummy varialbe for June.}
#'   \item{jul}{Dummy varialbe for July.}
#'   \item{aug}{Dummy varialbe for August.}
#'   \item{sep}{Dummy varialbe for September.}
#'   \item{oct}{Dummy varialbe for October.}
#'   \item{nov}{Dummy varialbe for November.}
#'   \item{dec}{Dummy varialbe for December.}
#'   \item{percchn}{Percent of imports from China.}
#' }
#'
#' @references
#'
#' Krupp, C.M., & Pollard, P.S., (1996). Market responses to antidumpting laws:
#' Some evidence from the U.S. chemical industry. \emph{Canadian Journal of Economics 29}(1), 199--227.
#' \doi{10.2307/136159}
#'
#' Wooldridge, J., (2000). \emph{Instructional Stata datasets for econometrics}.
#' [barium]. Boston College Department of Economics.
#'
"barium"
