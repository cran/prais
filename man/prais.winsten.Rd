\name{prais.winsten}
\alias{prais.winsten}
\title{
Prais-Winsten Estimation Procedure for AR(1) Serial Correlation
}
\description{
The Prais-Winsten estimation procedure takes into account serial correlation of type AR(1) in a linear model. The procedure is an iterative method that recursively estimates the beta coefficients and the error autocorrelation of the specified model until convergence of rho, i.e. the AR(1) coefficient, is attained. All estimates are obtained by OLS.
}
\usage{
prais.winsten(formula, data, iter = 50, rho = 0, tol = 1e-08)
}
\arguments{
  \item{formula}{
an object of class "formula" (or one that can be coerced to that class): a symbolic description of the model to be fitted.
}
  \item{data}{
an optional data frame, list or environment (or object coercible by as.data.frame to a data frame) containing the variables in the model.
}
  \item{iter}{
an integer specifying the maximum number of iterations.
}
  \item{rho}{
the coefficient rho from the estimation of the AR(1) model for the errors. By default it is zero. If it is different from zero, the data will be transformed once according to the value of rho
}
  \item{tol}{
the maximum (positive) value of the absolute difference between the estimator of rho in the current and the previous iteration that has to be attained to reach convergence and to stop the estimation. If not specified the value 1e-08 is used.
}
}
\references{
Prais, S. J. and Winsten, C. B. (1954): Trend Estimators and Serial Correlation. Cowles Commission Discussion Paper, 383 (Chicago).

Wooldridge, J. M. (2013): Introductory Econometrics. A Modern Approach. 5th ed. Mason, OH: South-Western Cengage Learning Cengage.
}
\author{
Franz Mohr
}
\examples{
n<-200
rho<-0.4

# Generate the serially correlated error term
noise<-rnorm(n,0,.5)
errors<-c(noise[1],rep(NA,n-1))
for (i in 2:n){
  errors[i]<-rho*errors[i-1]+noise[i]
}

# Generate the exogenous and dependent variables
ex1<-rnorm(n,0,1)
ex2<-rnorm(n,1,1)
y <- 4 + 3 * ex1 - 17 * ex2 + errors

sample=data.frame(y,ex1,ex2)

# Estimate
prais.winsten(y ~ ex1 + ex2,data=sample)
}
\keyword{prais.winsten}