\name{createDataclim}
\alias{createDataclim}

\title{
  Create a \code{\linkS4class{dataclim}} object
}
\description{
  Create a \code{\linkS4class{dataclim}} object from daily temperature and
  precipitation (and other meteorological) data 
}
\usage{
createDataclim(date = NULL, tmin = NULL, tmax = NULL, prec = NULL,
  basePeriod=1961:1990, convertFlaggedToNA=TRUE, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{date}{
    A vector of class Date.
  }
  \item{tmin}{
    A numeric vector of the same length as date.
  }
  \item{tmax}{
    A numeric vector of the same length as date.
  }
  \item{prec}{
    A numeric vector of the same length as date.
  }
  \item{basePeriod}{
    A numeric vector of years. The annual cycle is computed with respect
    to to these years during the consistency checks. Defaults to the
    standard climatological period of 1961:1990.
  }
  \item{convertFlaggedToNA}{Logical, whether detected inconsistent data
    shall be set to NA. Defaults to TRUE
  }
  \item{\dots}{
    Further vectors of the same length as date. This allows to include
    observations other than temperature and precipitation.
  }
}
\details{
  This generates a \code{\linkS4class{dataclim}} object. It calls the
  \code{\linkS4class{dataclim}} constructor which performs consistency checks (according to
  the Algorithm Theoretical Basis Document (ATBD) of the European
  Climate Assessment & Dataset project (ECA&D), currently only for
  temperature and precipitation) and aggregates the data to monthly and
  annual timescales. NAs in the variables are allowed.  
}
\value{
  An object of class \code{\linkS4class{dataclim}}.
}
\references{
  The ATBD: http://www.ecad.eu/documents/atbd.pdf
}
\author{
  Boris Orlowsky <boris@climate-babel.org>
}

\seealso{
  See also \code{\linkS4class{dataclim}}.
}

\examples{ 
data(potsdam)
date <- as.Date(potsdam$date)
myDataclim <- createDataclim(date=date, tmin=potsdam$tmin, tmax=potsdam$tmax,
                          prec=potsdam$prec, basePeriod=1981:2010)
}

\keyword{class}
