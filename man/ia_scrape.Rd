% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ia-scrape.R
\name{ia_scrape}
\alias{ia_scrape}
\title{Internet Archive Scraping API Access}
\usage{
ia_scrape(query, fields = c("identifier", "addeddate", "title"),
  sorts = "identifier asc", count = 5000L, summary = FALSE)
}
\arguments{
\item{query}{the query; \href{http://www.lucenetutorial.com/lucene-query-syntax.html}{Lucene-like query};
See \href{https://archive.org/advancedsearch.php}{IA Advanced Search} for possible options.}

\item{fields}{Use \code{\link[=ia_fields]{ia_fields()}} for an up-to-date listing of possible reutrn fields.
Default is \code{c("identifier", "addeddate", "title")}.}

\item{sorts}{sort collations, character vector. Any of the sort fields from the \code{fields`` endpoint can be specified. If the}identifier`` is specified as a sort field,
it must be the last sort (the function will try to help you out with this if
you forget). A field can have an \code{asc} or `desc` modifier (separate it from the field
name with a space). The default is `identifier asc` (and is always the implied last collation).
Example: `c("title asc", "publicdata desc")`}

\item{count}{The number of results to return. \emph{Minimum} is \code{100}. Default is \code{5000},
\emph{Maximum} is \code{9999}; See \url{https://archive.org/help/aboutsearch.htm} for
information on restrictions. Use \code{\link[=ia_scrape_next_page]{ia_scrape_next_page()}} on the return value of
this function (or the result of \code{\link[=ia_scrape_next_page]{ia_scrape_next_page()}}) to paginate through
API results until \code{\link[=ia_scrape_next_page]{ia_scrape_next_page()}}) returns \code{NULL} or \code{\link[=ia_scrape_has_more]{ia_scrape_has_more()}}
returns \code{FALSE}.}

\item{summary}{if \code{TRUE}, then only the number of results is returned. Default: \code{FALSE}}
}
\description{
Internet Archive Scraping API Access
}
\examples{
x <- ia_scrape("lemon curry")
}
\references{
\url{https://archive.org/help/aboutsearch.htm}
}
\seealso{
\code{\link[=ia_scrape_next_page]{ia_scrape_next_page()}}
}
