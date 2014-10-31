\name{CpGFilterICC}
\alias{CpGFilterICC}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
CpG filtering method based on intra-class correlation coefficients. 
}
\description{
Filter CpGs based on Intra-class Correlation Coefficients (ICCs). ICCs are calculated by fitting linear mixed effects models to all samples including the un-replicated samples. Including the large number of un-replicated samples improves ICC estimates dramatically. The method accommodates any replicate design. 
}
\usage{
CpGFilterICC(dat, rep.design, logit.transform = TRUE, verbose = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dat}{
 a matrix of CpG beta-values, row - CpG, column - sample
}
  \item{rep.design}{
    a vector indicating the replicate design, it could be factor, character or numeric vectors.
    Example - c(1, 2, 3, 4, 4, 4, 5, 5) OR c('S1', 'S2', 'S2', 'S2', 'S1')
}
  \item{logit.transform}{
   If TRUE, beta-value will be converted into M-value;  Default is TRUE.
}
  \item{verbose}{
  If TRUE, print run information
}
}

\value{
  ICCs for all probes
}
\references{
CpGFilter:Model-based CpG probe filtering with replicates for epigenome-wide association studies (2014). Submitted.
}
\author{
Jun Chen
}

\examples{
require(CpGFilter)
rep.design <- c(1:900, 901:910, 901:910, 911:915, 911:915, 911:915, 911:915)
rho <- CpGFilterICC(matrix(rnorm(940*10000), 10000, 940), rep.design, logit=FALSE)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ EWAS}
\keyword{ ICC }% __ONLY ONE__ keyword per line
\keyword{ LMM }
