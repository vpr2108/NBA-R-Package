#' An nbapackage function
#'
#' This function will give out the oldest player by age in any given year/season.
#' @param year The year from which you want the oldest player.
#' @keywords oldest player
#' @export
#' @examples
#' oldest_player()

oldest_player <- function(year) {
  filtered_data <- dplyr::filter(mydata, Year == year)
  filtered_oldest <- dplyr::select(filter(filtered_data, Age == max(filtered_data$Age)),Year:Age)
  return(slice_min(filtered_oldest,1))
}
