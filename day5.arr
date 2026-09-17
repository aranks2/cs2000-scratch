use context url-file("https://raw.githubusercontent.com/neu-pdi/cs2000-public-resources/refs/heads/main/static/","cs2000.arr")
fun choose-hat(temp :: Number) -> String:
  doc: "returns a message with temperature-approriate headwear"
  if temp <= 32:
    "winter cap"
  else if temp > 70:
    "sun hat"
  else:
    "no hat"
  end
where:
  choose-hat(70) is "no hat"
  choose-hat(40) is "no hat"
  choose-hat(10) is "winter cap"
  choose-hat(32) is "winter cap"
  choose-hat(70.1) is "sun hat"
  choose-hat(80) is "sun hat"
  choose-hat(32.1) is "no hat"
end

fun add-glasses(outfit :: String) -> String:
  doc: "takes any string and adds the extra string part"
  outfit + ", and glasses"
end


fun choose-outfit(tempin :: Number) -> String:
  doc: "takes temperature input and creates outfit based on weather"
    add-glasses(choose-hat(tempin))
end
  