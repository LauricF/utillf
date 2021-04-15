#' remove all axis, background and legend
#'
#' @param b_background boolean
#'
#' @return theme
#' @export
#'
#' @examples
artistic_theme <- function(b_background = TRUE){
  return_theme <- ggplot2::theme_classic() +
    ggplot2::theme( panel.grid.major = element_blank(),
                    panel.grid.minor = element_blank(),
                    panel.background = element_blank(),
                    axis.line = element_blank(),
                    axis.text.x = element_blank(),
                    axis.ticks.x = element_blank(),
                    axis.text.y = element_blank(),
                    axis.ticks.y = element_blank(),
                    axis.title = element_blank(),
                    legend.position = "none")
  if (b_background) {
    return_theme <-
      return_theme +
      ggplot2::theme(plot.background = element_rect(color = "black", fill = "black"))
  }
  return(return_theme)}
