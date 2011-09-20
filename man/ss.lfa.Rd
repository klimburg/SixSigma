\name{ss.lfa}
\alias{ss.lfa}
\title{
Loss Function Analysis
}
\description{
This function perform a Quality Loss Function Analysis, based in the Taguchi
Loss Function for "Nominal-the-Best" characteristics. 
}
\usage{
ss.lfa(lfa.data, lfa.ctq, lfa.Delta, lfa.Y0, lfa.L0, lfa.size = NA, 
	lfa.output = "both", lfa.sub = "Six Sigma Project")
}
\arguments{
  \item{lfa.data}{
Data frame with the sample to get the average loss.
}
  \item{lfa.ctq}{
Name of the field in the data frame containing the data.
}
  \item{lfa.Delta}{
Tolerance of the process.
}
  \item{lfa.Y0}{
Target of the process.
}
  \item{lfa.L0}{
Cost of poor quality at tolerance limit.
}
  \item{lfa.size}{
Size of the production, batch, etc. to calculate the total loss in a group 
(span, batch, period, ...)
}
  \item{lfa.output}{
Type of output (see details).
}
  \item{lfa.sub}{
Subtitle for the graphic output.
}
}
\details{
\code{lfa.output} can take the values "text", "plot" or "both".
}
\value{
  \item{lfa.k }{Constant k for the loss function}
  \item{lfa,lf }{Expression with the loss function}
  \item{lfa.MSD}{Mean Squared Differences from the target}
  \item{lfa.avLoss}{Average Loss per unit of the process}
  \item{lfa.Loss}{Total Loss of the process (if a size is provided)}
  
}
\references{
Taguchi G, Chowdhury S,Wu Y (2005) \emph{Taguchi's quality engineering handbook}. John
Wiley
}
\author{
Emilio Lopez-Cano
}

\seealso{
\code{\link{ss.lf}}, \code{\link{ss.data.bolts}}.
}
\examples{

ss.lfa(ss.data.bolts, "diameter", 0.5, 10, 0.001, 
		lfa.sub="10 mm. Bolts Project", 
		lfa.size=100000, lfa.output="both")
}
\keyword{Loss Function}
\keyword{Taguchi}
\keyword{Define Phase}