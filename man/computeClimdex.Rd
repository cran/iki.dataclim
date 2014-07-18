\name{computeClimdex}
\alias{computeClimdex}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Compute a comprehensive set of climdex indices
}
\description{
This function computes a comprehensive set of indices using the
\code{climdex.pcic} package. 
}
\usage{
computeClimdex(myClimdex)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{myClimdex}{
    A \code{climdexInput} object.
  }
}
\details{
  This function calls a number of functions for annual and monthly
  indices from the \code{climdex.pcic} package.

  The following annual indices are computed, always using the default
  options of the \code{climdex.pcic} package: cdd, cwd, fd, id, r20mm, r99ptot,
  rx1day, sdii, tn10p, tnn, tr, tx90p, txx, csdi, dtr, gsl, prcptot,
  r10mm, r95ptot, rnnmm, rx5day, su, tn90p, tnx, tx10p, txn, wsdi.

  The following monthly indices are computed, always using the default
  options of the \code{climdex.pcic} package: rx1day, tn10p, tnn, tx90p, txx,
  dtr, rx5day, tn90p, tnx, tx10p, txn.
}

\value{ 
  A list:
 \item{annual.climdex}{A zoo object containing a comprehensive set of annual
   climdex indices.}
 \item{monthly.climdex}{A zoo object containing a comprehensive set of monthly
   climdex indices.}
}
\references{
  \url{http://cccma.seos.uvic.ca/ETCCDMI/list_27_indices.shtml}
}
\author{
  Boris Orlowsky <boris@climate-babel.org>
}

\seealso{
  \code{climdex.pcic-package}, \code{zoo-package}
}
\examples{
data(potsdam)
date <- as.Date(potsdam$date)
myDataclim <- createDataclim(date=date, tmin=potsdam$tmin, tmax=potsdam$tmax,
                          prec=potsdam$prec, basePeriod=1981:2010)
myClimdex <- createClimdex(myDataclim, basePeriod=1981:2010)
climdexIndices <- computeClimdex(myClimdex)
}

\keyword{univar}
