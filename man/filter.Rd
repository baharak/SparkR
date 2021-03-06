% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/DataFrame.R, R/generics.R
\docType{methods}
\name{filter,DataFrame,characterOrColumn-method}
\alias{filter}
\alias{filter,DataFrame,characterOrColumn-method}
\alias{where}
\alias{where,DataFrame,characterOrColumn-method}
\alias{where,DataFrame,function-method}
\title{Filter}
\usage{
\S4method{filter}{DataFrame,characterOrColumn}(x, condition)

\S4method{where}{DataFrame,characterOrColumn}(x, condition)

filter(x, condition)

where(x, condition)
}
\arguments{
\item{x}{A DataFrame to be sorted.}

\item{condition}{The condition to filter on. This may either be a Column expression
or a string containing a SQL statement}
}
\value{
A DataFrame containing only the rows that meet the condition.
}
\description{
Filter the rows of a DataFrame according to a given condition.
}
\examples{
\dontrun{
sc <- sparkR.init()
sqlContext <- sparkRSQL.init(sc)
path <- "path/to/file.json"
df <- jsonFile(sqlContext, path)
filter(df, "col1 > 0")
filter(df, df$col2 != "abcdefg")
}
}

