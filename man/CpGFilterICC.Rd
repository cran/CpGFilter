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
CpGFilterICC(dat, rep.design, REML = FALSE, logit.transform = TRUE, verbose = TRUE)
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
  \item{REML}{
   If TRUE, Restricted Maximum Likelihood (REML) method will be used; Otherwise, Maximum Likelihood (ML) method will be used. Default is FALSE.
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
Chen J, Just A, et al. CpGFilter:Model-based CpG probe filtering with replicates for epigenome-wide association studies (2016). Bioinformatics, 32(3): 469–471
}
\author{
Jun Chen
}

\examples{
require(CpGFilter)
# 10 samples replicated twice, 5 samples replicated four times.
rep.design <- c(1:100, 101:110, 101:110, 111:115, 111:115, 111:115, 111:115)
rho <- CpGFilterICC(matrix(rnorm(140*1000), 1000, 140), rep.design, logit=FALSE)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ EWAS}
\keyword{ ICC }% __ONLY ONE__ keyword per line
\keyword{ LMM }
