
assign_to_global<-function(x){
  assign(as.character(substitute(x)), x ,envir = .GlobalEnv)
}

replace_NA_with_zero_global<-function(data, column){
  na_data[is.na(na_data$a),]<-0
  assign_to_global(na_data)
}

replace_NA_with_zero<-function(data){
  data[is.na(data)]<-0
  #assign_to_global(data)
}

## replaces a dollar expression with a defined data call 
dollar_to_comma<-function(x){
  capture = as.character(substitute(x))
  data = capture[2]
  column = capture[3]
  return(eval(parse(text = data))[,column])
}

##
replace_NA_with_zero<-function(data){
  if("$" %in% as.character(substitute(data))){
    data = dollar_to_comma(data)
  } else if ("["  %in% as.character(substitute(data))){
    data = data 
  } else (stop("Please supply data as a dollar or bracket format"))
  
  data[is.na(data)]<-0
  return(data)
  #assign_to_global(data)
}

