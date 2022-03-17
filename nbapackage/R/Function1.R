#' An nbapackage function
#'
#' This function will give out the player who scored the most amount of points in the NBA for the selected year.
#' @param year The year from which you want the top scorer.
#' @keywords top scorer
#' @export
#' @examples
#' top_scorer()

top_scorer <- function(year) {
  filtered_data <- dplyr::filter(mydata, Year == year)
  return(dplyr::select(filter(filtered_data, PTS == max(filtered_data$PTS)),Year:Player))

}
