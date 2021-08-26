def adivina_numero
    puts 'Guess the number...'
    newGuess = gets.chomp
    number = 25
    if newGuess.to_i == number
      puts "Great guess! The number was #{number}"
      return
    end
    puts 'Wrong number please try again...'
    adivina_numero()
end 
adivina_numero()