\name{evalHomogeneity-methods}
\docType{methods}
\alias{evalHomogeneity-methods}
\alias{evalHomogeneity,dataclim-method}
\alias{evalHomogeneity,data.frame-method}
\title{Methods for Function \code{evalHomogeneity}}
\description{
  Homogeneity and quality labels for temperature and precipitation
  observation series
}
\section{Methods}{
\describe{

\item{\code{signature(X = "dataclim")}}{
  This function classifies annual temperature and precipitation series
  as "useful", "doubtful" or "suspect" based on 4 homogeneity tests.
  It follows the  Algorithm Theoretical Basis Document (ATBD) of the
  European Climate Assessment & Dataset project (ECA&D), hosted by the
  Dutch meteorological service KNMI. 
}

\item{\code{signature(X = "data.frame")}}{
  As above, but for a \code{data.frame} input. Column(s) are supposed to
  contain equidistant observations. NAs are not allowed. nrow(X) >= 20
  is required.
}
}}
\keyword{methods}
\keyword{test}

