library(historydata)
data("us_national_population")

library(ggplot2)
gg <- ggplot(data = us_national_population)
gg + 
  aes(x = year, y = population) + 
  geom_line(color = "gray", size = 1.5) + 
  theme_bw()

