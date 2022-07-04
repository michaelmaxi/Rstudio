# Dataset allready loaded
# install.packages("dplyr")

data("ToothGrowth")

# View(ToothGrowth)

#Set Filter
myFilter <- filter(ToothGrowth,dose==0.5)
View(myFilter)

#Set Sort / Order
arrange(myFilter,len)

# Pipe Example
myPipe <- ToothGrowth %>%
  filter(dose==0.5) %>%
  arrange(len)

View(myPipe)


