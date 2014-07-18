\name{potsdam}
\alias{potsdam}
\docType{data}
\title{Example data from the Potsdam weather station}
\usage{data(potsdam)}

\description{
The \code{potsdam} data frame contains daily data of maximum, average
and minimum air temperature, precipitation and air pressure (1979-2013)
from the weather station at Potsdam, Germany
}

\format{
  This data frame contains the following columns:
  \describe{
    \item{date}{a character vector; calendar date (yyyy-mm-dd)}
    \item{tmax}{a numeric vector; daily maximum air temperature in deg. C}
    \item{tavg}{a numeric vector; daily average air temperature in
      deg. C}
    \item{tmin}{a numeric vector; daily minimum air temperature in
      deg. C}
    \item{prec}{a numeric vector; daily precipitation in mm}
    \item{press}{a numeric vector; daily air pressure in hPa}
  }
}
\details{
  The original data comes from ECA&D (see link below) and was assembled
  into a readable csv file. Note that this data must not be used for 
  commercial purposes, see
  \url{http://eca.knmi.nl/documents/ECAD_datapolicy.pdf}. Quote from the
  document: "These data, which include many GCOS-defined Essential Climate
  Variables (ECVs)  for the atmosphere near the surface, are strictly
  for use in non-commercial research and education projects only."

}
\source{
\url{http://eca.knmi.nl/dailydata/customquery.php}
}
\examples{
data(potsdam)
names(potsdam)
head(potsdam)
str(potsdam)
}
\keyword{datasets}
