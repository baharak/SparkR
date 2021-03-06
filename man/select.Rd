% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/DataFrame.R, R/generics.R
\docType{methods}
\name{$,DataFrame-method}
\alias{$,DataFrame-method}
\alias{$<-,DataFrame-method}
\alias{[,DataFrame,missing,ANY-method}
\alias{[[,DataFrame-method}
\alias{select}
\alias{select,DataFrame,Column-method}
\alias{select,DataFrame,character-method}
\alias{select,DataFrame,list-method}
\alias{selectExpr}
\title{Select}
\usage{
\S4method{$}{DataFrame}(x, name)

\S4method{$}{DataFrame}(x, name) <- value

\S4method{[[}{DataFrame}(x, i)

\S4method{[}{DataFrame,missing,ANY}(x, i, j, ..., drop = TRUE)

\S4method{select}{DataFrame,character}(x, col, ...)

\S4method{select}{DataFrame,Column}(x, col, ...)

\S4method{select}{DataFrame,list}(x, col)

select(x, col, ...)

selectExpr(x, expr, ...)
}
\arguments{
\item{x}{A DataFrame}

\item{col}{A list of columns or single Column or name}
}
\value{
A new DataFrame with selected columns
}
\description{
Selects a set of columns with names or Column expressions.
}
\examples{
\dontrun{
  select(df, "*")
  select(df, "col1", "col2")
  select(df, df$name, df$age + 1)
  select(df, c("col1", "col2"))
  select(df, list(df$name, df$age + 1))
  # Columns can also be selected using `[[` and `[`
  df[[2]] == df[["age"]]
  df[,2] == df[,"age"]
  # Similar to R data frames columns can also be selected using `$`
  df$age
}
}

