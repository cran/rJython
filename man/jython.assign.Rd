\name{jython.assign}
\alias{jython.assign}
\alias{jython.get}
\title{ Assign and get variables in Python from R }
\description{
  Functions that assign and get Python variables from R.
}
\usage{
  jython.assign( rJython, var.name, value )
  jython.get( rJython, py.var )
}
\arguments{
  \item{rJython}{ rJython interpreter as instantiated by function \code{ rJython } }
  \item{var.name}{ a character string containing a valid python variable name }
  \item{value}{ an R object whose equivalent wants to be assigned to the variable in python }
  \item{py.var}{ Name of a python variable }
}
\details{
    These functions can assign values to variables in Python as well as get their values back to R.
    Objects are serialized as json strings while being transferred between R and Python.
}
\value{
    Function \code{jython.get} returns a R version of the Python variable \code{py.var}.
}
\references{ \url{http://code.google.com/p/simplejson} }

\examples{

rJython <- rJython()

a <- 1:4
jython.assign( rJython, "a", a )
jython.exec( rJython, "b = len( a )" )
jython.get( rJython, "b" )

rJython$exec( "import math" )
jython.get( rJython, "math.pi" )

}

\keyword{ manip }

