require './lib/game_message'
require './lib/board'

class Game

  def initialize
    # @user    = Player.new
    # @cpu     = Player.new
    @message = GameMessage.new
    @board   = Board.new
  end


  # def user_place_disc(class)_in_cell(class)
    #place letter from A - G
    #piece must go down to the bottom place
    #if the cell is not empty
    #then go to cell above
  # end

  def user_win_condition
    #condition to win
    #condition to draw
    #option to play again or quit
    #initialize
    #start
  end

  def cpu_win_condition
    #condition to win
    #condition to draw
    #option to play again or quit
    #initialize
    #start
  end


  def user_turn
    @message.user_enter_letter
    user_prompt = gets.chomp.downcase
    #user_place_piece
    puts @board.render
    user_win_condition
  end

  def computer_turn
    #auto_place_piece
    puts @board.render
    cpu_win_condition
  end

  def turn
    user_turn
    cpu_turn
    turn
  end

  def start
    @message.welcome
    user_prompt = gets.chomp.downcase
    if user_prompt == "connect"
      # puts @board.render
      turn
    elsif user_prompt == "quit"
      @message.quit
      exit
    else
      @message.invalid_input
      start
    end
  end


end
