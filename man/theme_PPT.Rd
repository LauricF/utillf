% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/theme_PPT.R
\name{theme_PPT}
\alias{theme_PPT}
\title{Title}
\usage{
theme_PPT(size_text = 14, legend.key.size.v = 1.5)
}
\arguments{
\item{size_text}{integer}

\item{legend.key.size.v}{integer}
}
\value{
theme
}
\description{
Title
}
\examples{
library(ggplot2)
mtcars2 <- within(mtcars, {
vs <- factor(vs, labels = c("V-shaped", "Straight"))
am <- factor(am, labels = c("Automatic", "Manual"))
cyl  <- factor(cyl)
gear <- factor(gear)
})
p1 <- ggplot(mtcars2) +
geom_point(aes(x = wt, y = mpg, colour = gear)) +
labs(title = "Fuel economy declines as weight increases",
      subtitle = "(1973-74)",
      caption = "Data from the 1974 Motor Trend US magazine.",
      tag = "Figure 1",
      x = "Weight (1000 lbs)",
      y = "Fuel economy (mpg)",
      colour = "Gears")
      p1
      p1 + theme_PPT(16)
}
