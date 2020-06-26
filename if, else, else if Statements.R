
# Example 1
hot <- FALSE
temp <- 60
if (temp > 20){
  hot <- TRUE
  
}
hot

# Example 2
temp <- 100

if (temp > 80){
  hot <- TRUE
  
}

hot

# Example 3
if( 1 == 1){        print('hi')}

# Example 4
temp <- 30

if (temp > 90){
  print("Hot outside!")
} else{
  print("Its not too hot today!")
}

# Example 5
temp <- 30

if (temp > 80){
  print("Hot outside!")
} else if(temp<80 & temp>50){
  print('Nice outside!')
} else if(temp <50 & temp > 32){
  print("Its cooler outside!")
} else{
  print("Its really cold outside!")
}


# Final Example
# Items sold that day
ham <- 10
cheese <- 10

# Report to HQ
report <- 'blank'


if(ham >= 10 & cheese >= 10){
  report <- "Strong sales of both items"
  
}else if(ham == 0 & cheese == 0){
  report <- "Nothing sold!"
}else{
  report <- 'We had some sales'
}
print(report)
