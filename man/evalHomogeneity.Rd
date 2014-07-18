\name{evalHomogeneity}
\alias{evalHomogeneity}

\title{
  Quality labels for temperature and precipitation observation series
}
\description{
  This function classifies time series as "useful", "doubtful" or
  "suspect", based on 4 homogeneity tests (see below). It follows the
  Algorithm Theoretical Basis Document (ATBD) of the European Climate
  Assessment & Dataset project (ECA&D), hosted by the Dutch
  meteorological service KNMI. 
}
\usage{
evalHomogeneity(X)
}

\arguments{
  \item{X}{
    A \code{\linkS4class{dataclim}} object or a \code{data.frame}.
}
}
\details{
  If X is an object of \code{\linkS4class{dataclim}}, the function calls
  the 4 homogeneity tests Standard Normal 
  Homogeneity test (SNHtest), the BuisHand Range test (BHRtest), the PETtitt
  test (PETtest)  and the VON Neumann ratio (VONtest) and, for temperature,
  applies them to annual means of daily temperature ranges (Tmax-Tmin)
  and the day-to-day difference of the daily temperature ranges. For
  precipitation, the annual counts of days with more than 1mm of rain
  are evaluated.

  If no more than one test indicates a break at the 1\% level of
  significance, the temperature or precipitation observations are
  considered as "useful". If two tests indicate a break at the 1\%
  level, the respective observations are considered as "doubtful". With
  three or more tests indicating breaks at the 1\% level, the respective
  observations are considered as "suspect". The two derived temperature
  characteristics are aggregated by using the maximum number of
  1\%-significant breaks.

  Note that the four tests cannot handle NAs. If X is a
  \code{\linkS4class{dataclim}}
  object and the derived annual means have missing values, the function
  checks whether there are at least 20 valid years and at least 70\% of
  the years are valid for all variables. In this case, the missing
  values are linearly interpolated.
  
  If X is a \code{data.frame}, the function assumes the data.frame to
  contain equidistant non-NA observations. The series are tested
  directly, without any processing of derived quantities as in the case
  of the \code{\linkS4class{dataclim}} object.
}

\value{
  A list of
 \item{tests }{A data.frame with the significance levels (Not Significant,
  NS - 5\% significance level, p5 - 1\% significance level, p1) for each
  test for the (derived annual) variables.}
\item{breaks }{A data.frame with the approximate locations of the break
  for each  test for the (derived annual) variables (except for the
  VONtest). For the \code{\linkS4class{dataclim}} method, the years are
  returned. For the \code{data.frame} method, a row-index is returned. } 
 \item{classes }{A named vector containing the resulting classification
  of temperature and precipitation as "useful", "doubtful" or "suspect".}

}
\references{
  The ATBD: http://www.ecad.eu/documents/atbd.pdf
}
\author{
  Boris Orlowsky <boris@climate-babel.org>
}

\seealso{
    \code{\link{SNHtest}},   \code{\link{BHRtest}},
    \code{\link{PETtest}},   \code{\link{VONtest}}
}
\examples{
data(potsdam)
date <- as.Date(potsdam$date)
myDataclim <- createDataclim(date=date, tmin=potsdam$tmin, tmax=potsdam$tmax,
                          prec=potsdam$prec, basePeriod=1981:2010)
evalHomogeneity(myDataclim)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{htest}
