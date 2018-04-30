##: column_types() - Function to display the names of the columns with their data type based on the class function

column_types<-function(data){
  sapply(data, class)
}

##: Binary_Recoder() - Function to replace binary values with english values

binary_recoder<-function(data, column, values, replacement){
  data[,column]<-ifelse(data[,column] == values[1],replacement[1], replacement[2])
  data <<- data
  }
