% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/check_PII.R
\name{check_PII}
\alias{check_PII}
\title{Search Data Frames for Personally Identifiable Information}
\usage{
check_PII(df)
}
\arguments{
\item{df}{a data frame object}
}
\value{
Returns a data frame of columns that potentially contain PII
}
\description{
Search Data Frames for Personally Identifiable Information
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

check_PII(pii_df)
}
