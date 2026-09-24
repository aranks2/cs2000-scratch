use context url-file("https://raw.githubusercontent.com/neu-pdi/cs2000-public-resources/refs/heads/main/static/","cs2000.arr")
include csv


orders = table: time :: String, amount :: Number
  row: "08:00", 10.50
  row: "09:30", 5.75
  row: "10:15", 8.00
  row: "11:00", 3.95
  row: "14:00", 4.95
  row: "16:45", 7.95
end

high-value-orders = table: time :: String, amount :: Number
  row: "08:00", 10.50
  row: "10:15", 8.00
end

fun is-high-value(r :: Row) -> Boolean:
  doc: "determines if the order was a high value"
  amt = get-column(r, "amount")
  if amt >= 8:
    true
  else:
    false
  end
  
where:
  is-high-value(get-row(orders, 0)) is true
  is-high-value(get-row(orders, 3)) is false
  
end

#filter-with(orders, is-high-value)

#order-by(orders, "amount", true)

fun is-morning(r :: Row) -> Boolean:
  doc: "takes time and produces table with only morning orders"
  gettime = get-column(r, "time")
  if gettime < "12:00":
    true
  else:
    false
  end
where:
  is-morning(get-row(orders,0)) is true
  is-morning(get-row(orders,5)) is false
end


#filter-with(orders, is-morning)

#order-by(orders, "time", true)


table1 = load-table:  
  location:: String,
  subject :: String,
  date :: Number
  source: 
    csv-table-url("https://raw.githubusercontent.com/neu-pdi/cs2000-public-resources/refs/heads/main/static/support/7-photos.csv", default-options)
end



fun forest-only(r :: Row) -> Boolean:
  doc: "filtering out every subject except for forests"
  getsubject = get-column(r, "subject")
  if getsubject == "Forest":
    true
  else:
    false
  end
where:
  forest-only(get-row(table1, 36)) is true
  forest-only(get-row(table1, 22)) is false
end

  

table2 = filter-with(table1, forest-only)

order-by(table2, "date", true)