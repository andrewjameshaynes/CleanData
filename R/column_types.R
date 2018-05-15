##: column_types() - Function to display the names of the columns with their data type based on the class function
column_types<-function(data){
  sapply(data, class)
}
