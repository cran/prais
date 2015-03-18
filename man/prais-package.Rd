\name{prais-package}
\alias{prais-package}
\alias{prais}
\docType{package}
\title{
Prais-Winsten Estimation Procedure for AR(1) Serial Correlation
}
\description{
The Prais-Winsten estimation procedure takes into account serial correlation of type AR(1) in a linear model. The procedure is an iterative method that recursively estimates the beta coefficients and the error autocorrelation of the specified model until convergence of rho, i.e. the AR(1) coefficient, is attained. All estimates are obtained by OLS.
}
\details{
\tabular{ll}{
Package: \tab prais\cr
Type: \tab Package\cr
Version: \tab 0.1.1\cr
Date: \tab 2015-03-18\cr
License: \tab GPL-2\cr
}
~~ functions ~~ prais.winsten
}
\author{
Franz Mohr

Maintainer: Franz Mohr <prais.r@outlook.com>
}
\references{
Prais, S. J. and Winsten, C. B. (1954): Trend Estimators and Serial Correlation. Cowles Commission Discussion Paper No. 383 (Chicago).

Wooldridge, J. M. (2013): Introductory Econometrics. A Modern Approach. 5th ed. Mason, OH: South-Western Cengage Learning Cengage.
}
\keyword{prais}