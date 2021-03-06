% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/DataFrame.R, R/generics.R
\docType{methods}
\name{arrange,DataFrame,characterOrColumn-method}
\alias{arrange}
\alias{arrange,DataFrame,characterOrColumn-method}
\alias{orderBy}
\alias{orderBy,DataFrame,characterOrColumn-method}
\alias{orderBy,DataFrame,function-method}
\title{Arrange}
\usage{
\S4method{arrange}{DataFrame,characterOrColumn}(x, col, ...)

\S4method{orderBy}{DataFrame,characterOrColumn}(x, col)

arrange(x, col, ...)

orderBy(x, col)
}
\arguments{
\item{x}{A DataFrame to be sorted.}

\item{col}{Either a Column object or character vector indicating the field to sort on}

\item{...}{Additional sorting fields}
}
\value{
A DataFrame where all elements are sorted.
}
\description{
Sort a DataFrame by the specified column(s).
}
\examples{
\dontrun{
sc <- sparkR.init()
sqlContext <- sparkRSQL.init(sc)
path <- "path/to/file.json"
df <- jsonFile(sqlContext, path)
arrange(df, df$col1)
arrange(df, "col1")
arrange(df, asc(df$col1), desc(abs(df$col2)))
}
}

