\name{CpGFilter-package}
\alias{CpGFilter-package}
\alias{CpGFilter}
\docType{package}
\title{
CpG filtering method based on linear mixed effects model. 
}
\description{
Filter CpGs based on Intra-class Correlation Coefficients (ICCs). ICCs are calculated by fitting linear mixed effects models to all samples including the un-replicated samples. Including the large number of un-replicated samples improves ICC estimates dramatically. The method accommodates any replicate design. 

}
\details{
\tabular{ll}{
Package: \tab CpGFilter\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2014-10-31\cr
License: \tab GPL-2\cr
}

}
\author{
Jun Chen <chen.jun2@mayo.edu>
}
\references{
CpGFilter:Model-based CpG probe filtering with replicates for epigenome-wide association studies (2014). Submitted.
}

\keyword{ CpGFilter }

\examples{
require(CpGFilter)
rep.design <- c(1:900, 901:910, 901:910, 911:915, 911:915, 911:915, 911:915)
rho <- CpGFilterICC(matrix(rnorm(940*10000), 10000, 940), rep.design, logit=FALSE)
}
