x <- 1:10
y <- 1:11

plot(mtcars$disp, mtcars$mpg)
abline(lm(mpg ~ disp, data = mtcars))

install.packages(c("car", "ggplot2"))

library(car)

car::scatterplot(mpg ~ disp,
                 data = mtcars)
library(ggplot2)

ggplot(data = mtcars, 
       mapping = aes(x = disp, y = mpg)) +
  geom_point() +
  geom_smooth(method = "lm") +
  theme_minimal()

install.packages('plotly')

my_plot <- ggplot(data = mtcars, 
                  mapping = aes(x = disp, y = mpg)) +
  geom_point() +
  geom_smooth(method = "lm") +
  theme_minimal()

plotly::ggplotly(my_plot)

st_joe_land <- read.delim(file = "stJoeLand.csv", sep = ",")
st_joe_land <- read.csv(file = "stJoeLand.csv")

install.packages(c("readr", "data.table"))

st_joe_land_readr <- readr::read_csv(file = "stJoeLand.csv")

st_joe_land_datatable <- data.table::fread(input = "stJoeLand.csv")

names(st_joe_land_datatable)[names(st_joe_land_datatable) == "Zip Code"] <- 
  "Zip_Code"

#Using the save location will save a lot of time when using prediction models

save(st_joe_land, st_joe_land_datatable, file = "stJoeInfo.RData")
load("stJoeInfo.RData")

summary(as.factor(st_joe_land$school_district))

my_mean <- function(numbers) {
  # The length function gives the length
  # of a vector. Use nrow for number of
  # rows in a data.frame.
  numbers_length <- length(numbers)
  numbers_sum <- sum(numbers)
  numbers_average <- numbers_sum / numbers_length
  # The return function isn't strictly necessary,
  # but it is a safe way of handling this. You could
  # also just put numbers_average at the end and
  # it would print out.
  return(numbers_average)
}

my_mean(st_joe_land$sale_price)
  