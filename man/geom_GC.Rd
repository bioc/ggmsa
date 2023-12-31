% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/geom_GC.R
\name{geom_GC}
\alias{geom_GC}
\title{geom_GC}
\usage{
geom_GC(show.legend = FALSE)
}
\arguments{
\item{show.legend}{logical. Should this layer be included in the legends?}
}
\value{
a ggplot layer
}
\description{
Multiple sequence alignment layer for ggplot2. It plot points of GC content.
}
\examples{
#plot GC content
f <- system.file("extdata/LeaderRepeat_All.fa", package="ggmsa")
ggmsa(f, font = NULL, color="Chemistry_NT") + geom_GC()
}
\author{
Lang Zhou
}
