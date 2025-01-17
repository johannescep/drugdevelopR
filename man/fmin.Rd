% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions_multiple_normal.R
\name{fmin}
\alias{fmin}
\title{Density for the minimum of two normally distributed random variables}
\usage{
fmin(y, mu1, mu2, sigma1, sigma2, rho)
}
\arguments{
\item{y}{integral variable}

\item{mu1}{mean of second endpoint}

\item{mu2}{mean of first endpoint}

\item{sigma1}{standard deviation of first endpoint}

\item{sigma2}{standard deviation of second endpoint}

\item{rho}{correlation between the two endpoints}
}
\value{
The function \code{fmin()} will return the value of f(z), which is the value of the density function of the
minimum of two normally distributed random variables.
}
\description{
The function \code{fmin()} will return the value of f(z), which is the value of the density function of the
minimum of two normally distributed random variables.
}
\details{
Z= min(X,Y) with X ~ N(mu1,sigma1^2), Y ~ N(mu2,sigma2^2)

f(z)=f1(z)+f2(z)
}
\examples{
res <- fmin(y = 0.5, mu1 = 0.375, mu2 = 0.25, sigma1 = 8, sigma2 = 12, rho = 0.4 )
}
\section{Last Edited By}{
Johannes Cepicka
}

\section{Last Edit Date}{
2022-04-23
}

