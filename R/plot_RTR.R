#' Gives a scatterplot
#'
#' @param region
#'
#' @return a scatterplot of RTR by region
#' @export
#'
#' @examples
#' PlotRTR("Salzburg")
PlotRTR <- function(region){
    province = region

    rtrRegion <- dplyr::filter(RTR, region == province)

    ggplot(rtrRegion, aes(x=longitude, y=latitude))+
      geom_point(size = .2)

}
