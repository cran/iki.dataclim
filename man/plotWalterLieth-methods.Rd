\name{plotWalterLieth-methods}
\docType{methods}
\alias{plotWalterLieth-methods}
\alias{plotWalterLieth,dataclim-method}
\alias{plotWalterLieth,matrix-method}
\title{Methods for Function \code{plotWalterLieth}}
\description{
  Plot a Walter Lieth climate diagram
}
\section{Methods}{
\describe{

\item{\code{signature(X = "dataclim")}}{
  This produces a Walter Lieth climate diagram from annual cycles of
  temperature and precipitation.
}

\item{\code{signature(X = "matrix")}}{
  As above, but for a \code{matrix} input. This must be a 4x12 matrix,
  with first row: monthly precipitation (mm), second row: monthly
  average maximum daily temperature (degC), third row: monthly
  average minimum daily temperature (degC), forth row: monthly absolute
  minimum daily temperature. NAs are not allowed.
}
}}
\references{Walter, H. & Lieth, H (1960): Klimadiagramm
  Weltatlas. G. Fischer, Jena.}

\note{The code is based on code from the former CRAN package
  \code{climatol} by Jose A. Guijarro <jguijarrop@aemet.es>.}
\keyword{methods}
\keyword{plot}

