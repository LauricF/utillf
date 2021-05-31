#' remove all axis, background and legend
#'
#' @param b_background boolean
#'
#' @return theme
#' @export
theme_artistic <- function(b_background = TRUE){
  return_theme <- ggplot2::theme_classic() +
    ggplot2::theme( panel.grid.major = ggplot2::element_blank(),
                    panel.grid.minor = ggplot2::element_blank(),
                    panel.background = ggplot2::element_blank(),
                    axis.line = ggplot2::element_blank(),
                    axis.text.x = ggplot2::element_blank(),
                    axis.ticks.x = ggplot2::element_blank(),
                    axis.text.y = ggplot2::element_blank(),
                    axis.ticks.y = ggplot2::element_blank(),
                    axis.title = ggplot2::element_blank(),
                    legend.position = "none")
  if (b_background) {
    return_theme <-
      return_theme +
      ggplot2::theme(plot.background = ggplot2::element_rect(color = "black", fill = "black"))
  }
  return(return_theme)}
