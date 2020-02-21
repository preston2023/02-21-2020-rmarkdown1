f_k <- function(f_temp) {
  converted <- ((f_temp-32)) * (5/9) + 273.15
  return(converted)
}

k_c <- function(k_temp) {
  return(k_temp - 273.15)
}

f_c <- function(f_temp){
  k_temp <- f_k(f_temp)
  temp_c <- k_c(k_temp)
  return(temp_c)
}

k_c <- function(k_temp) {
  if(k_temp<0){
    warning("You passed in a negative Kelvin number")
    return(NA)
  }
  return(k_temp - 273.15)
}

k_c(-4)

k_c <- function(k_temp) {
  if(is.na(k_temp)){
    return(NA)
   } else if (k_temp < 0){
    return(NA)
   } else{
    return(k_temp - 273.15)
  }
}
 
k_c(1:10)

if(all(c(TRUE,TRUE,TRUE))){
  print("hello")
}

c(TRUE, FALSE) == c(TRUE, FALSE)
identical(c(TRUE, FALSE),c(TRUE, FALSE))

# write a function
# takes a single value
# if divisible by 3 return "fizz'
# if divisible by 5 return "buzz
# if divisible by both return "fizzbuzz"

fizzbuzz <- function(x){
  if((x %% 3 == 0 ) && (x %% 5 == 0)){
    return("fizzbuzz")
  } else if ((x %% 5 == 0)) {
    return("buzz")
  } else if((x %% 3 == 0 )) {
    return("fizz")
  } else{
    return(as.character(x))
  }
}

fizzbuzz(15)
fizzbuzz(10)
fizzbuzz(8)
fizzbuzz(21)



fizzbuzz_vec <- function(x){
 dplyr::case_when(
  (x %% 3) == 0 & (x %% 5) == 0 ~ "fizzbuzz",
  (x %% 3) == 0 ~ "fizz",
  (x %% 5) == 0 ~ "buzz",
  TRUE ~ as.character(x)
 )
}


fizzbuzz_vec(15)
fizzbuzz_vec(10)
fizzbuzz_vec(8)
fizzbuzz_vec(21)

calc_op <- function(x, y, op){
  switch(op,
         plus = x + y,
         minus = x - y,
         times = x * y,
         divide = x / y,
         stop("Unknown op!")
    )
}

calc_op(10, 100, "divide")

values <-  10

cut(values,
    c(-Inf, 0, 10, 20, 30, Inf),
    #labels = c("freezing", "cold", "cool", "warm", "hot"),
    right = TRUE)
