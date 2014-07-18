\name{iki.dataclim-package}
\alias{iki.dataclim-package}
\docType{package}
\title{
  Consistency, homogeneity, summary statistics and indices of
  climate data 
}
\description{
  The package offers an S4 infrastructure to store climatological
  station data of various temporal aggregation scales. In-built quality
  control and homogeneity tests follow the methodology from the European
  Climate Assessment & Dataset project. Wrappers for climate indices
  defined by the Expert Team on Climate Change Detection and Indices
  (ETCCDI), a quick summary of important climate statistics and climate
  diagram plots provide a fast overview of climatological
  characteristics of the station.   
}
\details{
  \tabular{ll}{
    Package: \tab iki.dataclim\cr
    Type: \tab Package\cr
    Version: \tab 1.0\cr
    Date: \tab 2014-07-18\cr
    License: \tab GPL-3\cr
    Depends: \tab methods\cr
  }

  This package bundles part of the code developed for the
  \strong{dataclim}-project, a collaboration between the German
  "Gesellschaft fuer Internationale Zusammenarbeit (GIZ)" and the
  Indonesian weather service BMKG, funded by the German environmental
  ministery under the
  "Internationale Klimaschutz Initiative \strong{(iki.)}". Hence the name.  
}
\author{
Author: Boris Orlowsky <boris@climate-babel.org>
}
\references{
  ECA&D: \url{http://eca.knmi.nl/documents/atbd.pdf}

  ETCCDI climate indices:
  \url{http://cccma.seos.uvic.ca/ETCCDMI/list_27_indices.shtml}, 

  dataclim project: \url{http://www.giz.de/en/worldwide/16743.html}
}
\keyword{package}
\examples{
## A typical work flow could be:

## load the package
library(iki.dataclim)

## load example data and create vector of class Date
data(potsdam)
date <- as.Date(potsdam$date)

## create a dataclim object
myDataclim <- createDataclim(date=date, tmin=potsdam$tmin, tmax=potsdam$tmax,
                          prec=potsdam$prec, basePeriod=1981:2010)

## look at the days with quality issues
slot(myDataclim, "flaggedData")

## evaluate homogeneity of temperature and precipitation
evalHomogeneity(myDataclim)

## look at summary climate statistics for the period 1980-2000
summary(myDataclim, 1980:2000)

## create a Walter-Lieth climate diagram
plotWalterLieth(myDataclim)

## convert the dataclim object to a climdexInput object (from package
## climdex.pcic) and compute a comprehensive set of ETCCDI climate
## indices
myClimdex <- createClimdex(myDataclim, basePeriod=1981:2010)
climdexIndices <- computeClimdex(myClimdex)

## plot the annual timeseries of maximum daily maximum temperature
plot(climdexIndices$annual[, "txx"])
}
