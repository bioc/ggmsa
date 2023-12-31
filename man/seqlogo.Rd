% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/seqlogo.R
\name{seqlogo}
\alias{seqlogo}
\title{seqlogo}
\usage{
seqlogo(
  msa,
  start = NULL,
  end = NULL,
  font = "DroidSansMono",
  color = "Chemistry_AA",
  adaptive = FALSE,
  top = FALSE,
  custom_color = NULL
)
}
\arguments{
\item{msa}{Multiple sequence alignment file or object for representing 
either nucleotide sequences or peptide sequences.}

\item{start}{Start position to plot.}

\item{end}{End position to plot.}

\item{font}{font families, possible values are 'helvetical', 'mono', and 
'DroidSansMono', 'TimesNewRoman'.  Defaults is 'DroidSansMono'. 
If font=NULL, only the background tiles is drawn.}

\item{color}{A Color scheme. One of 'Clustal', 'Chemistry_AA', 
'Shapely_AA', 'Zappo_AA', 'Taylor_AA', 'LETTER', 'CN6','Chemistry_NT', 
'Shapely_NT', 'Zappo_NT', 'Taylor_NT'. Defaults is 'Chemistry_AA'.}

\item{adaptive}{A logical value indicating whether the overall height of 
seqlogo corresponds to the number of sequences. If FALSE, seqlogo 
overall height = 4,fixedly.}

\item{top}{A logical value. If TRUE, seqlogo is aligned to the top of MSA.}

\item{custom_color}{A data frame with two cloumn called "names" and 
"color".Customize the color scheme.}
}
\value{
ggplot object
}
\description{
plot sequence logo for MSA based 'ggolot2'
}
\examples{
#plot sequence motif independently
nt_sequence <- system.file("extdata", "LeaderRepeat_All.fa", 
                           package = "ggmsa")
seqlogo(nt_sequence, color = "Chemistry_NT")
}
\author{
Lang Zhou
}
