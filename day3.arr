use context url-file("https://raw.githubusercontent.com/neu-pdi/cs2000-public-resources/refs/heads/main/static/","cs2000.arr")


blue-sq = rectangle(40, 40, "solid", "blue")

# tall rectangle

rect-2x = above(blue-sq, blue-sq)

orange-tri = triangle(35, "solid", "orange")
side-length = 50
color = "purple"
square(side-length, "solid", color)

yellow-circ = circle(20, "solid", "yellow")
black-rect = rectangle(50, 80, "solid", "black")
overlay(yellow-circ, black-rect)

yellow-circls = beside(yellow-circ, yellow-circ)
above(yellow-circls, black-rect)

stripe = rectangle(150, 20, "solid", "dark blue")
bckgrnd = overlay(stripe, rectangle(150, 90, "solid", "cyan"))
star-piece = star(30 , "solid", "gold")
circ-piece = circle(40 , "solid", "dark blue")
center = overlay(star-piece, circ-piece)
flag = overlay(center, bckgrnd)
