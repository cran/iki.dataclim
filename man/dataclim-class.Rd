\name{dataclim-class}
\Rdversion{1.1}
\docType{class}
\alias{dataclim-class}
\alias{initialize,dataclim-method}
\alias{summary,dataclim-method}
\alias{show,dataclim-method}

\title{Class \code{"dataclim"}}
\description{
  The class provides a standardized container for climate data with
  in-built Quality Control (QC). Its objects ensure a correct input for
  the tests and functions of this package.
}

\section{Objects from the Class}{
  Objects can be created by calls of the form

  \code{new("dataclim", date, tmin, tmax, prec, basePeriod, convertFlaggedToNA, ...)},

  although \code{\link{createDataclim}} is more handy.
  
  Dataclim objects contain monthly and annual aggregates of daily
  input data after after Qualitiy Control (QC) and padded with NA to
  ensure complete calendar year coverage. Suspect entries are flagged.

  The QC follows closely the Algorithm Theoretical Basis Document (ATBD)
  of the European Climate Assessment & Dataset project (ECA&D), hosted
  by the Dutch meteorological service KNMI. Currently, only QCs for
  temperature and precipitation are implemented.
}

\section{Slots}{
  \describe{
    \item{\code{basePeriod}:}{Object of class \code{"numeric"}. A vector
      of years. Temperature QC evaluates the deviation from the mean annual
      cycle computed over these years.  }
    \item{\code{flagged}:}{Object of class \code{"list"}. A list with
      components of each variable, containing the (row-) indices of suspect days
      according to the QC of the respective variable. }
    \item{\code{flaggedData}:}{Object of class \code{"zoo"} from package
      \code{zoo}. A zoo containing all days where QC detected
      something. } 
    \item{\code{data}:}{Object of class \code{"zoo"}. Daily data, where
      suspect entries are set to NA (if  \code{convertFlaggedToNA} is TRUE). }
    \item{\code{monthlyAvg}, \code{monthlyMin},
      \code{monthlyMax}:}{Objects of class \code{"zoo"}. Monthly aggregates
      of the daily data for months with not more than three NA
      days. Precipitation in \code{monthlyAvg} is given as sums.} 
    \item{\code{annualAvg}, \code{annualMin}, \code{annualMax}:}{Objects
      of class \code{"zoo"}.  Annual aggregates of the above monthly
      data. Only years with non-missing monthly data are considered here.} 
    \item{\code{convertFlaggedToNA}:}{logical, are entries with quality
      issues set to NA? }
  }
}
\section{Methods}{
  \describe{
    \item{initialize}{\code{signature(.Object = "dataclim")}:
      Constructor of a dataclim object. Performs QC and fills the
      slots.} 
    \item{show}{\code{signature(object = "dataclim")}: Nice display.}
    \item{summary}{\code{signature(object = "dataclim")}: Computes
      summary statistics from a dataclim objects: means, standard
      deviations, annual cycles of monthly averages, minimum and maximum
      and annual and monthly trends (slope and p-value). These
      statistics are computed over the years given in the optional basePeriod
      vector (defaults to the \code{basePeriod}-slot of the
      \code{dataclim} object).} 
  }
}

\note{
  Slots can be accessed with slot(object, name). See ?slot for help.
}

\references{
  The ATBD: http://www.ecad.eu/documents/atbd.pdf
}

\author{
  Boris Orlowsky <boris@climate-babel.org>
}


\examples{
showClass("dataclim")
}
\keyword{classes}
