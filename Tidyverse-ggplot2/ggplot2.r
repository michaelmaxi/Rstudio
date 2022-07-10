# R Week 4
install.packages("tidyverse")
install.packages("ggplot")
install.packages("palmerpenguins")

library(ggplot2)
library(palmerpenguins)

data("penguins")
View(penguins)

# Basic Plot
ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))

# Plot with colour to different species + heading
 ggplot(data = penguins) + 
   geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species))+
   labs(title="TITLE - Flipper Length (mm) vs Body Mass (g)",subtitle="Data collected 1999")+
   annotate("Text", x=220, y=4300, label="Boom", color="Purple", fontface="bold")
# You can change colour, size, shape all by adding within the 'aes' brackets

# Different Geom SMOOTH + JITTER 
ggplot(data = penguins) + 
  geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g)) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))

