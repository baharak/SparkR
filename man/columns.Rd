% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/DataFrame.R
\docType{methods}
\name{columns,DataFrame-method}
\alias{columns,DataFrame-method}
\alias{names,DataFrame,function-method}
\alias{names,DataFrame-method}
\title{Column names}
\usage{
\S4method{columns}{DataFrame}(x)

\S4method{names}{DataFrame}(x)
}
\arguments{
\item{x}{A SparkSQL DataFrame}
}
\description{
Return all column names as a list
}
\examples{
\dontrun{
sc <- sparkR.init()
sqlContext <- sparkRSQL.init(sc)
path <- "path/to/file.json"
df <- jsonFile(sqlContext, path)
columns(df)
}
}

