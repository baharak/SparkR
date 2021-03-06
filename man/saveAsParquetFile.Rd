% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/DataFrame.R, R/generics.R
\docType{methods}
\name{saveAsParquetFile,DataFrame,character-method}
\alias{saveAsParquetFile}
\alias{saveAsParquetFile,DataFrame,character-method}
\title{saveAsParquetFile}
\usage{
\S4method{saveAsParquetFile}{DataFrame,character}(x, path)

saveAsParquetFile(x, path)
}
\arguments{
\item{x}{A SparkSQL DataFrame}

\item{path}{The directory where the file is saved}
}
\description{
Save the contents of a DataFrame as a Parquet file, preserving the schema. Files written out
with this method can be read back in as a DataFrame using parquetFile().
}
\examples{
\dontrun{
sc <- sparkR.init()
sqlContext <- sparkRSQL.init(sc)
path <- "path/to/file.json"
df <- jsonFile(sqlContext, path)
saveAsParquetFile(df, "/tmp/sparkr-tmp/")
}
}

