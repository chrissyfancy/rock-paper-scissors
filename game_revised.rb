print "Let's play! Choose rock (r), paper (p), or scissors (s): "
player = gets.chomp

until player == "r" || player == "p" || player == "s"
  print "Choose rock (r), paper (p), or scissors (s): "
  player = gets.chomp
end

if player == "r" || player == "p" || player == "s"
   computer = ["r", "p", "s"].sample

  if player == "r"
    player_output = "rock"
  elsif player == "p"
    player_output = "paper"
  elsif player == "s"
    player_output = "scissors"
  end

  if computer == "r"
    computer_output = "rock"
  elsif computer == "p"
    computer_output = "paper"
  elsif computer == "s"
    computer_output = "scissors"
  end

  if computer == player
    puts "Tie! Computer chose #{computer_output} and Player chose #{player_output}."
  elsif (computer == "r" && player == "s") || (computer == "s" && player == "p") || (computer == "p" && player == "r")
    puts "Computer wins! Computer chose #{computer_output}. Player chose #{player_output}."
  elsif (computer == "p" && player == "s") || (computer == "s" && player == "r") || (computer == "r" && player == "p")
    puts "Player wins! Computer chose #{computer_output}. Player chose #{player_output}."
  end
end
