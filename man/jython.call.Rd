\name{jython.call}
\alias{jython.call}
\title{ jython.call }
\description{
  Calls Python functions from R 
}
\usage{
  jython.call( rJython, py.foo, ... )
}
\arguments{
  \item{rJython}{ rJython interpreter as instantiated by function \code{ rJython } }
  \item{py.foo}{ Name of a python function }
  \item{...}{ R objects to pass as arguments to the Python function }
}
\details{
    This function runs a python function taking as arguments R objects and returning an R object.
    Some limitations exist as to the nature of the objects that can be passed between R and Jython.
    As of this writing, atomic arguments and vectors are supported. 

    The user has to be careful to indicate named parameters as required according to python conventions.
}
\value{
    An R representation of the object returned by the call to the python function. 
}
\references{ \url{http://code.google.com/p/simplejson} }

\examples{

rJython <- rJython()
jython.call( rJython, "len", 1:3 )

a <- 1:4
b <- 5:8
rJython$exec( "def concat(a,b): return a+b" )
jython.call( rJython, "concat", a, b)


}

\keyword{ manip }

