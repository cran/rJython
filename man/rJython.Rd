\name{rJython}
\alias{rJython}
\title{ rJython }
\description{
  Interface for using python from R via Jython
}
\usage{
  rJython( jython.jar = NULL, modules = NULL )
}
\arguments{
  \item{jython.jar}{Optional alternative location of the jython.jar file. The package is distributed with its 'jython.jar' file, but the user can invoke their own by providing its path.}
  \item{modules}{List containing optional paths for required modules. Packages utilizing rJython can add their own extra python modules to the 'inst' directory and then add their base path using function \code{system.file} so that they can be later found when issuing 'import module' directives.}
}
\details{
This function is not primarily intended to be run directly by users but to be used by R packages with python dependencies.
Their authors are invited to hide the internals of this package in their code at their convenience.
}
\value{
  An object of class rJava that can exectute python code as per the examples below.
}
\references{ \url{http://rsympy.googlecode.com}, \url{http://www.jython.org/Project/}, \url{http://www.jython.org/javadoc/org/python/util/PythonInterpreter.html}
}
\examples{

rJython <- rJython()

# Now you can use the rJava low level interface

rJython$exec( "a = 2*2" )
four <- rJython$get("a")
.jstrVal( four )

# Alternatively, a higher level interface is provided by the rJython package:

a <- 1:4
jython.assign( rJython, "a", a )
jython.exec( rJython, "b = len( a )" )
jython.get( rJython, "b" )


\dontrun{

# If package 'foo' contains python code that depends on module 'mod',
#   'mod' can be included in the 'inst' directory of the package.
# Then, in order to make it available to Jython, the interpreter can be
#   started as follows:

rJython <- rJython( modules = system.file("python-modules", package = "foo") )

}
}
\keyword{ symbolmath }

