##: remove_na() - function(s) to remove all rows/entries with an NA value

remove_na_dataframe<-function(df){
  df <<- df[complete.cases(df),]
}

remove_na_vector<-function(vec){
  vec <<- vec[complete.cases(vec)]
}


remove_na<-function(data){
  data_structure<-c(is.vector(data), is.data.frame(data))
  functions<-c(remove_na_vector, remove_na_dataframe)
  data <<- el(functions[data_structure])(data)
}
