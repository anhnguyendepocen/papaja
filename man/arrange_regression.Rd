% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/arrange_regression.R
\name{arrange_regression}
\alias{arrange_regression}
\title{Create regression table}
\usage{
arrange_regression(x, est_name, standardized, ci, ...)
}
\arguments{
\item{x}{\code{glm} or \code{lm} object. See details.}

\item{est_name}{Character. If \code{NULL} (default) the name given in \code{x} (or a formally correct
adaptation, such as "\eqn{b^*}" instead of "b" for standardized regression coefficients) is used,
otherwise the supplied name is used. See details.}

\item{standardized}{Logical. Indicates if coefficients are standardized or unstandardized and leading
zeros are omitted if appropriate. See details.}

\item{ci}{Numeric. Either a single value (range [0, 1]) giving the confidence level or a two-column
\code{matrix} with confidence region bounds as column names (e.g. "2.5 \%" and "97.5 \%") and
coefficient names as row names (in the same order as they appear in \code{summary(x)$coefficients}.
See details.}

\item{...}{Further arguments to pass to \code{\link{printnum}} to format the estimate.}
}
\value{
\code{data.frame} of class \code{apa_regression_table}.
}
\description{
These methods take \code{glm} or \code{lm} objects to create
a \code{data.frame} containing a regression table. \emph{This function is not exported.}
}
\keyword{internal}
