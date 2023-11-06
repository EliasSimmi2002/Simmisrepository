fun 
  draw-Nordisk-flagg(x1,x2,x3) -> Image:

  TOP1 = underlay-xy(overlay-xy(overlay-xy(square(100,"solid", x1),
    100,0,
        rectangle(45, 100, "solid", x2)),
    190, 0,
      rectangle(45, 100, "solid", x2)),
  145, 0,
    rectangle(45, 145, "solid", x3))
  

TOP2 = (overlay-xy(TOP1, 
    200, 0,
      square(100,"solid", x1)))
  

TOP3 = (overlay-xy(TOP2, 
    300, 0,
      square(100,"solid", x1)))


Midt = underlay-xy(overlay-xy((overlay-xy(TOP3, 
      0, 140,
          rectangle(400, 40, "solid", x3))),
  0,100,
      rectangle(400, 45, "solid", x2)),
  0,175,
    rectangle(400, 45, "solid", x2))
  
  

BUNN = (underlay-xy(Midt, 
    0, 160,
    flip-vertical(TOP3)))
BUNN
end

Island = draw-Nordisk-flagg("blue", "white", "red") 
Danmark = draw-Nordisk-flagg("red", "red", "white")
Faroyene = draw-Nordisk-flagg("white", "blue", "red")
Sverige = draw-Nordisk-flagg("blue", "blue", "yellow")
Finland = draw-Nordisk-flagg("white", "white", "dark blue")
Norge = draw-Nordisk-flagg("red", "white", "blue")

my-table = table: Land :: String
  row: "Island"
  row: "Danmark"
  row: "Faroyene"
  row: "Finland"
  row: "Sverige"
  row: "Norge"
end


my-table
