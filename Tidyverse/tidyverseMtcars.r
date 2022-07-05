# Run each line on the console

#list loaded data sets
data()

#from list, select a data set and add below
data("mtcars")


myPipe <- mtcars %>%
  filter(hp>60) %>%
  arrange(desc(hp))
View(myPipe)

