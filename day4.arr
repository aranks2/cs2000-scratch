use context url-file("https://raw.githubusercontent.com/neu-pdi/cs2000-public-resources/refs/heads/main/static/","cs2000.arr")
fun greeting(name :: String) -> String:
  doc: "Returns a greeting addressed to the given person"
  "Welcome to class, " + name
end

rectangle(40, 40, "solid", "green")


fun three-layer-cake(flavor1 :: String, flavor2 :: String, flavor3 :: String) -> Image:
  doc: "Chooses the flavors of the three layered cake"
  frame(
        above(rectangle(80, 35, "solid", flavor1),
        above(rectangle(100, 40, "solid", flavor2),
        rectangle(120, 50, "solid", flavor3))))
end


fun tshirt-cost(total :: Number, messagein :: String) -> Number:
  doc: "Gathers number of shirts and text being printed on and calculates cost of the combination"
  total * (5 + (string-length(messagein) * 0.1))
end