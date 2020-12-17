class GameMessage

  def welcome
    puts "Welcome to Connect4. Please enter connect to play or quit to leave."
  end

  def user_enter_letter
    puts "Please enter A - G to drop your piece"
  end

  def invalid_input
    puts "That is an invalid input. Please try again"
  end

  def quit
    puts "Thank you for playing the game. Hope you enjoyed it."
  end

end
