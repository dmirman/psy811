#' Set legend position
#'
#' A wrapper function to make setting legend position easier when using ggplot.
#'
#' @param pos Legend position as a two-element vector
#' @param edge_color Legend edge color, defaults to black
#' @param legend_fill Legend fill color, defaults to white
#' @examples
#' last_plot() + legend_positioning(c(0,1)) #put legend in upper left corner
#' last_plot() + legend_positioning(c(1,0)) #put legend in lower right corner
legend_positioning <- function(pos, edge_color="black", legend_fill="white"){
  return(theme(legend.justification = pos, legend.position = pos, 
               legend.background = element_rect(color = edge_color, fill = legend_fill)))
}