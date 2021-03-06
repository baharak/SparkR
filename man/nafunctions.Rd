% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/DataFrame.R, R/generics.R
\docType{methods}
\name{dropna,DataFrame-method}
\alias{dropna}
\alias{dropna,DataFrame-method}
\alias{fillna}
\alias{fillna,DataFrame-method}
\alias{na.omit}
\title{dropna}
\usage{
\S4method{dropna}{DataFrame}(x, how = c("any", "all"), minNonNulls = NULL,
  cols = NULL)

\S4method{fillna}{DataFrame}(x, value, cols = NULL)

dropna(x, how = c("any", "all"), minNonNulls = NULL, cols = NULL)

na.omit(x, how = c("any", "all"), minNonNulls = NULL, cols = NULL)

fillna(x, value, cols = NULL)
}
\arguments{
\item{x}{A SparkSQL DataFrame.}

\item{how}{"any" or "all".
if "any", drop a row if it contains any nulls.
if "all", drop a row only if all its values are null.
if minNonNulls is specified, how is ignored.}

\item{minNonNulls}{If specified, drop rows that have less than
minNonNulls non-null values.
This overwrites the how parameter.}

\item{cols}{Optional list of column names to consider.}

\item{value}{Value to replace null values with.
Should be an integer, numeric, character or named list.
If the value is a named list, then cols is ignored and
value must be a mapping from column name (character) to
replacement value. The replacement value must be an
integer, numeric or character.}

\item{x}{A SparkSQL DataFrame.}

\item{cols}{optional list of column names to consider.
Columns specified in cols that do not have matching data
type are ignored. For example, if value is a character, and
subset contains a non-character column, then the non-character
column is simply ignored.}
}
\value{
A DataFrame

A DataFrame
}
\description{
Returns a new DataFrame omitting rows with null values.

Replace null values.
}
\examples{
\dontrun{
sc <- sparkR.init()
sqlCtx <- sparkRSQL.init(sc)
path <- "path/to/file.json"
df <- jsonFile(sqlCtx, path)
dropna(df)
}
\dontrun{
sc <- sparkR.init()
sqlCtx <- sparkRSQL.init(sc)
path <- "path/to/file.json"
df <- jsonFile(sqlCtx, path)
fillna(df, 1)
fillna(df, list("age" = 20, "name" = "unknown"))
}
}

