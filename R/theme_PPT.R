#' Title
#'
#' @param size_text integer
#' @param legend.key.size.v integer
#'
#' @return theme
#' @export
#'
#' @examples
#' library(ggplot2)
#' mtcars2 <- within(mtcars, {
#' vs <- factor(vs, labels = c("V-shaped", "Straight"))
#' am <- factor(am, labels = c("Automatic", "Manual"))
#' cyl  <- factor(cyl)
#' gear <- factor(gear)
#' })
#' p1 <- ggplot(mtcars2) +
#' geom_point(aes(x = wt, y = mpg, colour = gear)) +
#' labs(title = "Fuel economy declines as weight increases",
#'       subtitle = "(1973-74)",
#'       caption = "Data from the 1974 Motor Trend US magazine.",
#'       tag = "Figure 1",
#'       x = "Weight (1000 lbs)",
#'       y = "Fuel economy (mpg)",
#'       colour = "Gears")
#'       p1
#'       p1 + theme_PPT(16)
theme_PPT <- function(size_text = 14, legend.key.size.v =    1.5){
  return_theme <- theme_bw()  +
    theme(axis.title.x = element_text(size=size_text),
                     axis.text.x  = element_text(size=size_text),
                     axis.title.y = element_text(size=size_text),
                     axis.text.y  = element_text(size=size_text),
                    legend.key.size =    unit(legend.key.size.v, "lines"))
  return(return_theme)
}
