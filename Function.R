# Simple function, no inputs!
#Example 1
hello <- function(){
  print('hello!')
}

hello()

#Example 2
helloyou <- function(name){
  print(paste('hello ',name))
}
helloyou('Sammy')

#Example 3
add_num <- function(num1,num2){
  print(num1+num2)
}
add_num(5,10)

#Example 4
hello_someone <- function(name='Frankie'){
  print(paste('Hello ',name))
}
hello_someone()

#Example 5
formal <- function(name='Sam',title='Sir'){
  return(paste(title,' ',name))
}
formal()

formal('Issac Newton')

var <- formal('Marie Curie','Ms.')
var

# Multiplies input by 5

times5 <- function(input) {
  result <- input ^ 2
  return(result)
}
times5()
