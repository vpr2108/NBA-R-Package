#' An nbapackage function
#'
#' This function will give out the correlation matrix of all continuous variables from a given year/season
#' @param year The year from which you want the oldest player.
#' @keywords correlation matrix
#' @export
#' @examples
#' correlation_matrix()

correlation_matrix <- function(year) {
  filtered_data <- dplyr::filter(mydata, Year == year)
  filtered_continuous <- filtered_data[,sapply(filtered_data, is.numeric)]
  return(cor(filtered_continuous))
}
