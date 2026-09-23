use context url-file("https://raw.githubusercontent.com/neu-pdi/cs2000-public-resources/refs/heads/main/static/","cs2000.arr")
include csv
#recipes = load-table:
# servings :: Number,
#  prep-time :: Number
#  source: csv-table-url("https://raw.githubusercontent.com/neu-pdi/cs2000-public-resources/refs/heads/main/static/support/5-recipes.csv", default-options)
# end 

  
annualbirth = load-table:
  gss_code :: String,
  gss_name :: String,
  year_ending_date :: Number,
  measure :: String,
  geography :: String, 
  source :: String,
  sex :: String,
  source_url :: String,
  value :: Number
  source: 
      csv-table-url("https://data.london.gov.uk/download/2yp18/8f420da4-f665-452f-98e0-3bce7af92a93/births_itl.csv", default-options)
end

get-column(get-row(annualbirth, 1), "value")

table-length(annualbirth)



# get-column(get-row(annualbirth, 1400), "location")
#produces no such column when finding a column that doesn't exist