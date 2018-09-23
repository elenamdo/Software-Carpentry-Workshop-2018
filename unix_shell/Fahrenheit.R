#set working directory
setwd("~Desktop/SWC_fall2018")

fahr_to_Kelvin <- function(temp){
  kelvin <- ((temp- 32) * (5/9)) + 273.15
  kelvin
}

fahr_to_Kelvin(32)
print(paste('Boiling point of water:', fahr_to_Kelvin(212)))

kelvin_to_celsius <- function(temp){
  celsius <- temp -273.15
  celsius
}

print(paste("Absolute zero in celsius:", kelvin_to_celsius(0)))

fahr_to_celsius <- function(temp){
  temp_k <- fahr_to_Kelvin(temp)
  result <- kelvin_to_celsius(temp_k)
  result
}

print(paste("Freezing point of water in celsius", fahr_to_celsius(32.0)))

fence <- function(original, wrapper){
  printout <- paste(wrapper, original, wrapper)
  return(printout)
}

fence("bananas", "pajamas")
