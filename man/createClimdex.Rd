\name{createClimdex}
\alias{createClimdex}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  Create a climdex.pcic::climdexInput from a \code{\linkS4class{dataclim}} object
}
\description{
  This function creates a \code{climdex.pcic::climdexInput} object from
  a \code{\linkS4class{dataclim}} object. 
}
\usage{
createClimdex(myDataclim, basePeriod)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{myDataclim}{
    A \code{\linkS4class{dataclim}} object.
  }
  \item{basePeriod}{
    A numeric vector containing the years of the base period,
    e.g. 1961:1990. The basePeriod is used for the computation of the
    quantile threshold needed for some indices in the climdex.pcic
    package. If NULL (the default), the basePeriod will be extracted
    from the respective slot of the \code{\linkS4class{dataclim}}
    object. 
  }
}

\details{
  This is a simple wrapper to convert a \code{\linkS4class{dataclim}} object to a
  climdexInput object.
  
  Note that if basePeriod is not a sequence of consecutive years, the
  range min(basePeriod):max(basePeriod) will be input to the
  climdex.pcic computations.
}

\value{
  A \code{climdexInput} object.
}
\author{
  Boris Orlowsky <boris@climate-babel.org>
}

\seealso{
  \code{climdex.pcic-package}
}
\examples{
data(potsdam)
date <- as.Date(potsdam$date)
myDataclim <- createDataclim(date=date, tmin=potsdam$tmin, tmax=potsdam$tmax,
                          prec=potsdam$prec, basePeriod=1981:2010)
myClimdex <- createClimdex(myDataclim, 1981:2010)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{manip}
