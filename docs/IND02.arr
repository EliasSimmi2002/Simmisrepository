include 
shared-gdrive(
  "dcic-2021",
  "1wyQZj_L0qqV9Ekgr9au6RX2iqt2Ga8Ep")
include gdrive-sheets
include data-source
ssid = "1RYN0i4Zx_UETVuYacgaGfnFcv4l9zd9toQTTdkQkj7g"
kWh-wealthy-consumer-data =
load-table: komponent, energi
source: load-spreadsheet(ssid).sheet-by-name("kWh", true)
    sanitize energi using string-sanitizer
  end



fun energi-to-number(str :: String) -> Number:
  doc: "If s is not a numeric string, default to 0."
  cases(Option) string-to-number(str):
    | some(a) => a
    | none => 0
  end
  
  # Funksjonen under gjør om verdiene i "energi" blokka fra String til Number. 
where:
  energi-to-number("10") is 10
  energi-to-number("30") is 30
  energi-to-number("37") is 37
  energi-to-number("5") is 5
  energi-to-number("4") is 4
  energi-to-number("15") is 15
  energi-to-number("48") is 48
  energi-to-number("12") is 12
  energi-to-number("4") is 4
end


transform-column(kWh-wealthy-consumer-data, "energi", energi-to-number)
kWh-wealthy-consumer-data

Tabellx = transform-column(kWh-wealthy-consumer-data, "energi", energi-to-number)


#Funksjonen under summerer Tabellx sammen
sum(Tabellx, "energi") 


#Funksjonen under gjør Tabellx om til et søylediagram
bar-chart(Tabellx, "komponent", "energi")


#Funksjonen under regner ut energiforbruket for bilbruk til en typisk innbygger
fun forbruk(x1, x2, x3) :
  energy-per-day = ( x1 / x2 ) * x3
  
  energy-per-day
  
end

forbruk(10, 5, 5)

