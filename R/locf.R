##: locf() - Function to apply to a single column of a data.frame or vector that replaces NA values
##:          with their previous value and updates the dataframe.

locf<-function(df, column){
  list=df[,column]
  for(i in 1:nrow(df)){
    if(is.na(list[i])){
        list[i] = list[i-1]
      }
}
  df[,column] <<- list
}

