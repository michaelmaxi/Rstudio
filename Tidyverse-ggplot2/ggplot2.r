# R Week 4
install.packages("tidyverse")
install.packages("ggplot")
install.packages("palmerpenguins")

library(ggplot2)
library(palmerpenguins)

data("penguins")
View(penguins)

# Basic Plot
# ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))

# Plot with colour to different species
# ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species))
# You can change colour, size, shape all by adding within the 'aes' brackets

# Different Geom SMOOTH + JITTER 
ggplot(data = penguins) + 
  geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g)) + 
  geom_jitter(mapping = aes(x = flipper_length_mm, y = body_mass_g))
