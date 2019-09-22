class Elektra
  def sunaudota(sump,sumg,papildk,papildksum,papildkw,maxkw,pabaiga,proc)
puts "Iveskite kiek kW elektros sunaudojo salos gyventojai:"
kW = gets.chomp.to_i
 if kW<=50
 sump=0.5*kW
 sumg=sump+sumg
 proc= (sumg/100)*20
 puts = "Salos gyventojai tures sumoketi uz elektra: " + sumg.to_s + " eur " +  "Administracinis mokestis yra: " + proc.to_s + " eur"
 elsif kW>50 && kW<=150
 papildk=kW-50
 sump=0.5*50
 papildksum=papildk*0.75
 sumg=sump+papildksum
 proc= (sumg/100)*20
 puts = "Salos gyventojai tures sumoketi uz elektra: " + sumg.to_s + " eur " + "Administracinis mokestis yra: " + proc.to_s + " eur"
 elsif kW>150 && kW<=250
 sump= 0.5*50
 papildksum= 100*0.75
 papildk=kW-150
 papildkw=papildk*1.2
 sumg=sump+papildksum+papildkw
 proc= (sumg/100)*20
 puts = "Salos gyventojai tures sumoketi uz elektra: " + sumg.to_s + " eur " + "Administracinis mokestis yra: " + proc.to_s + " eur"
 else
 sump=0.5*50
 papildksum=100*0.75
 papildkw=100*1.2
 papildk=kw-250
 maxkw=papildk*1.5
 sumg=sump+papildksum+papildkw+maxkw
 puts = "Salos gyventojai tures sumoketi uz elektra: " + sumg.to_s + " eur " + "Administracinis mokestis yra: " + proc.to_s + " eur"
 end
end
end
elek = Elektra. new
elek.sunaudota(0,0,0,0,0,0,0,0)