\name{ss.rr}
\alias{ss.rr}
\title{Gage R & R (Measure System Assessment)}
\usage{
ss.rr(var, part, appr, lsl = NA, usl = NA, sigma = 5.15,
  data = "stop('Data' is required for lattice graphics)",
  main = "Six Sigma Gage R&R Study", sub = "")
}
\arguments{
  \item{var}{Measured variable}

  \item{part}{Factor for parts}

  \item{appr}{Factor for appraisers (operators, machines,
  ...)}

  \item{data}{Data frame containing the variates}

  \item{main}{Main title for the graphic output}

  \item{sub}{Subtitle for the graphic output (recommended
  the name of the project)}

  \item{lsl}{Numeric value of lower specification limit
  used with USL to calculate Study Variation as %Tolerance.
  KCL 2014-02-11}

  \item{usl}{Numeric value of upper specification limit
  used with LSL to calculate Study Variation as %Tolerance.
  KCL 2014-02-11}

  \item{sigma}{Numeric value for number of std deviations
  to use in calculating study variation. KCL 2014-02-11}
}
\value{
Analysis of Variance Table. Variance composition and
\%Study Var. Graphics. \item{anovaTable}{The ANOVA table of
the model} \item{varComp}{A matrix with the contribution of
each component to the total variation} \item{studyVar}{A
matrix with the contribution to the study variation}
\item{ncat}{Number of distinct categories}
}
\description{
Performs Gage R&R analysis for the assessment of the
measure system of a process. Related to the Measure phase
of the DMAIC strategy of Six Sigma.
}
\details{
Performs an R&R study for the measured variable, taking
into account part and appraiser factors. It outputs the
sources of Variability, and six graphs: bar chart with the
sources of Variability, plots by appraiser, part and
interaction and x-mean and R control charts.

Updates to code by Kevin C Limburg 2014-02-11 1. Input of
tolerance to calculate variance as a percent of tolerance
and adding that to the Components of Variation bar chart.
2. Adjustment of the study variation sigma level (currently
set to 5.15) by passing it as an argument in the function
that is defaulted to 5.15 3. Allow support for single
appraiser
}
\examples{
data(ss.data.rr)
ss.rr(time1, prototype, operator, data=ss.data.rr,
	sub="Six Sigma Paper Helicopter Project")
}
\author{
EL Cano with contributions by Kevin C Limburg
}
\references{
Allen, T. T. (2010). Introduction to Engineering Statistics
and Lean Six Sigma - Statistical Quality Control and Design
of Experiments and Systems (Second Edition ed.). London:
Springer.

Automotive Industry Action Group. (2010). Measurement
Systems Analysis (Fourth Edition). AIAG.

Cano, Emilio L., Moguerza, Javier M. and Redchuk, Andres.
2012. \emph{Six Sigma with {R}. Statistical Engineering for
Process Improvement}, Use R!, vol. 36. Springer, New York.
\url{http://www.springer.com/statistics/book/978-1-4614-3651-5}.

Montgomery, D. C. (2008). Introduction to Statistical
Quality Control (Sixtth Edition ed.). New York: Wiley &
Sons, Inc.
}
\seealso{
\code{\link{ss.data.rr}}
}
\keyword{Gauge}
\keyword{MSA}
\keyword{R&R}
\keyword{repeatability}
\keyword{reproducibility}

