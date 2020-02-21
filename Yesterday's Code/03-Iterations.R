f_values <- c(0, 32, 212, -40)
f_values*10
f_values*c(10,100)

f_k <- function(f_temp) {
  converted <- ((f_temp-32)) * (5/9) + 273.15
  return(converted)
}

for (x in f_values) {
  print(f_k(x))
}

install.packages("purrr")
library(purrr)
converted <- purrr::map(f_values, f_k)
class(converted)

purrr::map_dbl(f_values, f_k)

purrr::map(mtcars, class)
purrr::map(mtcars, summary)

library(tidyverse)

mtcars %>%
  mutate(mpg = as.numeric(mpg))

lapply(mtcars, f_c)
purrr::map_dbl(mtcars, mean)
sapply(mtcars, mean)
vapply(mtcars, mean, numeric(1))

library(nycflights13)
flights

#lapply(mtcars, mean)
#purrr::map(flights, class)

#countunique <- function(x){
# number <-  count(iris(unique(x)))
#  return(number)
#}

purrr::map_dbl(mtcars, mean)

purrr::map(flights, class)

iris
num_unique <- function(x) {
  return(length(unique(x)))
}
purrr::map_dbl(iris, num_unique)
purrr::map_dbl(iris, function(x){length(unique(x))})
purrr::map_dbl(iris, ~ length(unique(.)))

purrr::map(c(-10,0,10,100),~ rnorm(n = 10, mean = .))
purrr::map(c(-10,0,10,100), function(x){rnorm(n=10, mean = x)})

library(purrr)
safe_log <- safely(log)
log(10)
safe_log(10)
safe_log("a")

x <- list(1, 10, "a")
y <- x %>% map(safe_log)
y
flipped_results <- y %>% transpose()
flipped_results$result


mu <- list(5,10,-3)
map(mu, rnorm, n=5)
sigma <- list(1, 5, 10)
map2(mu, sigma, rnorm, n = 5)
n <- list(1,3,5)
args <- list(mean = mu, sd = sigma, n=n)
pmap(args, rnorm)
