% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions_multiple_normal.R
\name{posp_normal}
\alias{posp_normal}
\title{Probability of a successful program, when going to phase III for multiple endpoint with normally distributed outcomes}
\usage{
posp_normal(
  kappa,
  n2,
  alpha,
  beta,
  Delta1,
  Delta2,
  sigma1,
  sigma2,
  in1,
  in2,
  fixed,
  rho
)
}
\arguments{
\item{kappa}{threshold value for the go/no-go decision rule;}

\item{n2}{total sample size for phase II; must be even number}

\item{alpha}{significance level}

\item{beta}{\code{1-beta} power for calculation of sample size for phase III}

\item{Delta1}{assumed true treatment effect for standardized difference in means}

\item{Delta2}{assumed true treatment effect for standardized difference in means}

\item{sigma1}{standard deviation of first endpoint}

\item{sigma2}{standard deviation of second endpoint}

\item{in1}{amount of information for \code{Delta1} in terms of sample size}

\item{in2}{amount of information for \code{Delta2} in terms of sample size}

\item{fixed}{choose if true treatment effects are fixed or random, if TRUE \code{Delta1} is used as fixed effect}

\item{rho}{correlation between the two endpoints}
}
\value{
The output of the the function \code{posp_normal()} is the probability of a successful program, when going to phase III.
}
\description{
After getting the "go"-decision to go to phase III, i.e. our results of phase II are over the predefined threshold \code{kappa}, this function
calculates the probability, that our program is successfull, i.e. that both endpoints show a statistically significant positive treatment effect in phase III.
}
\examples{
res <- posp_normal(kappa = 0.1, n2 = 50, alpha = 0.025, beta = 0.1,
                               Delta1 = 0.375, Delta2 = 0.625, in1 = 300, in2 = 600, 
                               sigma1 = 8, sigma2 = 4, fixed = TRUE, rho = 0.3)
}
\section{Last Edited By}{
Johannes Cepicka
}

\section{Last Edit Date}{
2022-04-23
}

