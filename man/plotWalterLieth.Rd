\name{plotWalterLieth}
\alias{plotWalterLieth}

\title{
  Plot a Walter Lieth climate diagram
}
\description{
  This produces a Walter Lieth climate diagram from annual cycles of
  temperature and precipitation.
}
\usage{
plotWalterLieth(X, station="", alt=NA, per, margin=c(4, 4, 5, 4),
pcol="#005ac8", tcol="#e81800", pfcol="#79e6e8", sfcol =
  "#09a0d1", shem=FALSE, ...)
}

\arguments{
  \item{X}{
    A \code{\linkS4class{dataclim}} object or a \code{matrix}.
  }
  \item{station}{A string describing the station. Defaults to the empty
    string "".}
  \item{alt}{The altitude of the station. Defaults to NA.}
  \item{per}{A string for the period over which the monthly averages are
    computed. Defaults to the \code{basePeriod} slot if X is of class
    \code{\linkS4class{dataclim}} or to the empty string "" if X is a
    \code{matrix}}.
  \item{margin}{Vector with four numeric elements describing the margins
    of the plot. Defaults to c(4, 4, 5,4). See \code{par()}.}
  \item{pcol}{Color for (p)recipitation. Defaults to "#005ac8".}
  \item{tcol}{Color for (t)emperature. Defaults to "#e81800".}
  \item{pfcol}{Color (p)robable (f)rost. Defaults to "#79e6e8".}
  \item{sfcol}{Color (s)ure (f)rost. Defaults to "#09a0d1".}
  \item{shem}{Logical. Is the station on the Southern hemisphere? Defaults
    to FALSE.}
  \item{...}{Further arguments passed to \code{plot()}.}
}

\details{
  If X is an object of \code{\linkS4class{dataclim}}, the extracts the
  monthly averages from a call to summary(X) and produces the Walter
  Lieth climate diagram.

  If X is a \code{matrix}, X is expected to be a 4x12 matrix with no
  NAs, with the first row: monthly precipitation (mm), second row: monthly
  average maximum daily temperature (degC), third row: monthly
  average minimum daily temperature (degC), forth row: monthly absolute
  minimum daily temperature.
}

\value{
  Nothing. A plot.
}
\author{
  Boris Orlowsky <boris@climate-babel.org>
}

\note{The code is based on code from the former CRAN package
  \code{climatol} by Jose A. Guijarro <jguijarrop@aemet.es>.}

\references{Walter, H. & Lieth, H (1960): Klimadiagramm Weltatlas. G. Fischer, Jena.}

\seealso{
 \code{\linkS4class{dataclim}}
}


\examples{
data(potsdam)
date <- as.Date(potsdam$date)
myDataclim <- createDataclim(date=date, tmin=potsdam$tmin, tmax=potsdam$tmax,
                          prec=potsdam$prec, basePeriod=1981:2010)
plotWalterLieth(myDataclim)
plotWalterLieth(myDataclim, station="Potsdam", alt=80)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{plot}
