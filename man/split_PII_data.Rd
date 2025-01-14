% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/split_pii_data.R
\name{split_PII_data}
\alias{split_PII_data}
\title{Split Data Into PII and Non-PII Columns}
\usage{
split_PII_data(df, exclude_columns = NULL)
}
\arguments{
\item{df}{a data frame object}

\item{exclude_columns}{columns to exclude from the data frame splitdescription}
}
\value{
Returns two data frames into the global environment: one containing the PII columns and one without the PII columns.
    A unique merge key is created to join them. The function then prints the columns that were flagged and split to the console.
}
\description{
Split Data Into PII and Non-PII Columns
}
\examples{
# create a data frame containing various personally identifiable information
pii_df <- data.frame(
 lat = c(40.7128, 34.0522, 41.8781),
 long = c(-74.0060, -118.2437, -87.6298),
 first_name = c("John", "Michael", "Linda"),
 phone = c("123-456-7890", "234-567-8901", "345-678-9012"),
 age = sample(30:60, 3, replace = TRUE),
 email = c("test@example.com", "contact@domain.com", "user@website.org"),
 disabled = c("No", "Yes", "No"),
 stringsAsFactors = FALSE
)

split_PII_data(pii_df, exclude_columns = c("phone"))

}
