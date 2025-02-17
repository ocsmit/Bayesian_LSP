% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dat_dl_point_ts.R
\name{GetEvi2PointTs}
\alias{GetEvi2PointTs}
\title{Use Microsoft Planetary Computer with STAC API to get Landsat EVI2 time
series for any point location specified by longitude and latitude.}
\usage{
GetEvi2PointTs(pt_coords, focalDates = "1984-01-01/2022-12-31", ncores = 1)
}
\arguments{
\item{pt_coords}{Point location. Longitude and latitude.}

\item{focalDates}{Temporal period.}

\item{ncore}{Number of cores used to parallel the process.}
}
\value{
A data.table containing EVI2 time series along with QA values.
}
\description{
Use Microsoft Planetary Computer with STAC API to get Landsat EVI2 time
series for any point location specified by longitude and latitude.
}
\examples{
\dontrun{
  pt_coords <- data.table::data.table(x = -71.700975, y = 43.945733)
  focalDates <- "1984-01-01/1989-06-04"
  ncores <- 5
  val_dt <- GetEvi2PointTs(pt_coords, ncore = ncores)
  val_dt <- data.table::setorder(val_dt, date)
  plot(val_dt[qa == 0, .(date, evi2)], pch = 16, type = "b")
}
}
