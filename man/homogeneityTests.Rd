\name{ECA&D homogeneity tests of climatological time series}
\alias{Homogeneity tests}
\alias{SNHtest}
\alias{BHRtest}
\alias{PETtest}
\alias{VONtest}

\title{
  4 homogeneity tests as employed in the ECA&D project
}

\description{
  These functions implement the 4 homogeneity tests of climatological
  time series described in the Algorithm Theoretical Basis Document (ATBD)
  of the European Climate Assessment & Dataset project (ECA&D). These
  are the Standard Normal Homogeneity test (SNHtest), the BuisHand Range
  test (BHRtest), the PETtitt test (PETtest)  and the VON Neumann ratio
  (VONtest). 
}

\usage{
SNHtest(X)
BHRtest(X)
PETtest(X)
VONtest(X)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{X}{
    A numeric vector of equidistant observations. NAs are not
    allowed. At least 20 observations are required.
}
}
\details{
  The ATBD describes the test statistics for these 4 tests and
  provides critical values for significance levels of 1\% and 5\% for
  different sample sizes between 20 and 100. Significance is assessed
  conservatively, i.e. if the actual sample size lies between two of the
  provided sample sizes in the ATBD, we compare to the critical value of
  the smaller size. The Von Neumann ratio test (VONtest) only indicates
  whether the series has a break while the other tests also indicate the
  approximate location of the break.
}
\value{
  \item{statistic}{Test statistic}
  \item{breakpoint}{Index where the break occurs approximately.}
  \item{significance}{One of p5, p1 or NS for significant at 5\%, at 1\%
    or Not Significant, respectively.}
}
\references{
  The ATBD: http://www.ecad.eu/documents/atbd.pdf
}
\author{
  Boris Orlowsky <boris@climate-babel.org>
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
  \code{\link{evalHomogeneity}}
}

\examples{
v <- c(rep(1, 10), rep(2, 10))
SNHtest(v)
}

\keyword{test}

