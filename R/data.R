#' RTR download and upload speed.
#'
#' A dataset containing the download and upload speed and other attributes of
#' about 239,000 mobile users.
#'
#' @format A data frame with 239060 rows and 15 variables:
#' \describe{
#'   \item{id}{id of user}
#'   \item{mtyme}{time at upload or download}
#'   ...
#' }
#' @source \url{http://www.trutschnig.net/RTR2015.RData}
"RTR2015"

#==============================================================================
#' RTR download and upload speed with regions.
#'
#' A dataset containing the download and upload speed and other attributes of
#' about 239,000 mobile users.
#'
#' @format A data frame with 248349 rows and 20 variables:
#' \describe{
#'   \item{id}{id of user}
#'   \item{mtyme}{time at upload or download}
#'   ...
#' }
"RTR"

#==============================================================================
#' iso12 provides regions.
#'
#' A dataset containing the download and upload speed and other attributes of
#' about 239,000 mobile users.
#'
#' @format A data frame with 239060 rows and 15 variables:
#' \describe{
#'   \item{iso_adm2}{district iso number}
#'   \item{district}{name of the district}
#'   ...
#' }
#' @source \url{http://www.trutschnig.net/iso12.RData}
"iso12"

#==============================================================================
#' ATM withdrawals.
#'
#' A dataset containing the sum of withdrawal and the corresponding weekday
#' including a marker for holidays.
#'
#' @format A data frame with 239060 rows and 15 variables:
#' \describe{
#'   \item{ymd}{year month and day of withdrawal}
#'   \item{weekday}{weekday of withdrawal}
#'   ...
#' }
#' @source \url{http://www.trutschnig.net/Datensatz.txt}
"Bankomat"
