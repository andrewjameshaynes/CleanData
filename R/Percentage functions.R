##: percent_to_numeric() - Convert a percent string to a numeric value
percent_to_numeric<-function(input){
    as.numeric(gsub('%','',input))
  }

##: numeric_to_percent() - Take a numeric input, multiply by 100 and append a percentage sign
numeric_to_percent<-function(input){
  paste0(as.character(100*input), '%')
}

##: number_to_percent() - Take a numeric input and append a percentage sign
number_to_percent<-function(input){
  paste0(as.character(input), '%')
}
