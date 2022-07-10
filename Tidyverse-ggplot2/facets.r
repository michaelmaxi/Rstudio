# facets

install.packages("tidyverse")
install.packages("ggplot")
install.packages("palmerpenguins")

library(ggplot2)
library(palmerpenguins)

data("penguins")
View(penguins)

# Basic Plot
ggplot(data = penguins, aes(x = flipper_length_mm, y = body_mass_g)) +
  geom_point(aes(color=species)) + 
  facet_wrap(~species)

