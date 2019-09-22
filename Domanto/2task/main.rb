def main()
  skaiciuArray = []

  until false
    p "Jei norite isjungti programa rasykite 'exit'."
    p "Irasykite skaiciu"
    stringSkaicius = gets.chomp

    if(stringSkaicius == "exit")
      break;
    end

    stringSkaicius = stringSkaicius.to_f

    skaiciuArray.push(stringSkaicius)

    vidurkis = skaiciuArray.inject{ |sum, el| sum + el}.to_f / skaiciuArray.length

    p "Skaiciu vidurkis: " + vidurkis.to_s

    nuokrypis = 0

    for skaicius in skaiciuArray do
      nuokrypis += ((skaicius - vidurkis) * (skaicius - vidurkis))
    end

    nuokrypis *= (1.to_f / skaiciuArray.size)
    nuokrypis = Math.sqrt(nuokrypis)

    p "Standartinis nuokrypis: " + nuokrypis.round(2).to_s

  end
end

main()