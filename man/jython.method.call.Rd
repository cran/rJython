\name{jython.method.call}
\alias{jython.method.call}
\title{ jython.method.call }
\description{
  Calls Python functions from R 
}
\usage{
  jython.method.call( rJython, py.object, py.method, ... )
}
\arguments{
  \item{rJython}{ rJython interpreter as instantiated by function \code{ rJython } }
  \item{py.object}{ an existing object }
  \item{py.method}{ a method of such object }
  \item{...}{ arguments for the method }
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

rJython$exec( 'a = "hola hola"' )
jython.method.call( rJython, "a", "split", " " )

}

\keyword{ manip }

