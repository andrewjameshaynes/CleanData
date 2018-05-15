##: year_month_to_nice_date() - Converts dates of the form "YYYMM" into proper dates for plotting/replacement

year_month_to_nice_date<-function(x,sep=" ",abbreviate = T){
  names_choice = list(month.name, month.abb)[[abbreviate+1]]
  year = substr(x,1,4)
  month_name = names_choice[as.numeric(substr(x,5,6))]
  return(paste(month_name, year, sep=sep))
}
