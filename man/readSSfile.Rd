% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/arc.R
\name{readSSfile}
\alias{readSSfile}
\title{readSSfile}
\usage{
readSSfile(file, type = NULL)
}
\arguments{
\item{file}{A text file in connect format}

\item{type}{file type. one of "Helix, "Connect", "Vienna" and "Bpseq"}
}
\value{
data frame
}
\description{
Read secondary structure file
}
\examples{
RF03120 <- system.file("extdata/Rfam/RF03120_SS.txt", package="ggmsa")
helix_data <- readSSfile(RF03120, type = "Vienna")
}
\author{
Lang Zhou
}
