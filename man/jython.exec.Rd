\name{jython.exec}
\alias{jython.exec}
\title{ jython.exec }
\description{
  Executes python code via the Jython interpreter
}
\usage{
  jython.exec( rJython, python.code )
}
\arguments{
  \item{rJython}{ rJython interpreter as instantiated by function \code{ rJython } }
  \item{python.code}{ a character vector containing python code, typically containing a single line with indentation and EOL characters as required by Python syntax }
}
\details{
    This function runs Python code.
    It needs to be provided by the caller in a character vector.

    The vector may consists of a single string with EOL and indentation characters embedded.

    Alternatively, it can be a character vector, each entry containing one or more lines of python code.
}
\value{
    None.
    If the code produces some output, it is up to the caller to go and fetch if from Jython.
}
\references{ \url{http://code.google.com/p/simplejson} }

\examples{

rJython <- rJython()

a <- 1:4
b <- 5:8
jython.exec( rJython, c( "def concat(a,b):", "\treturn a+b" ) )
jython.call( rJython, "concat", a, b)


}

\keyword{ manip }

