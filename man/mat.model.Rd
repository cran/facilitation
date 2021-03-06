% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mat_model.R
\name{mat.model}
\alias{mat.model}
\title{matrix population model}
\usage{
mat.model(data, ns, combine.matrices = FALSE)
}
\arguments{
\item{data}{Either the result of a simulation, to extract the parameters from, or a
data.frame containing the parameters.}

\item{ns}{an array of numbers of stages. Use when \code{data} is a data.frame and the is
more than one population.}

\item{combine.matrices}{Logical. Combine the matrices into a single, multi-population matrix?}
}
\description{
Produces the Matrix Population Model matrix for a continuous time structured
population model, to be applied in a linear ODE. If there is more than one population,
returns a list of matrices, or one block-diagonal matrix created by the combination.
}
\examples{
# example 1
mat.model(create.parameters(n=4))

# example 2 
data(malthusian)
mat.model(malthusian)

# example 3
data(twospecies)
mat.model(twospecies,combine.matrices=TRUE)
}
