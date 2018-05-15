##: Binary_Recoder() - Function to replace binary values with english values

binary_recoder<-function(data, column, values, replacement){
  return(ifelse(data[,column] == values[1],replacement[1], replacement[2]))
}