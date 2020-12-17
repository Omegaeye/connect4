class Board
  attr_accessor :board
  attr_reader   :cols,
                :height

  def initialize (cols = 7, height = 6)
    @cols = cols
    @height = height
    @board = create_board
  end

  def create_board
    board = []
    @cols.times do
      board.push(Array.new(@height))
    end
    board
  end

  def display
    display = ""

    @height.downto(0) do |level|
    @board.each do |row|
      piece = row[level]
      display += piece.nil? ? "[ ]" : "[#{piece}]"
      end
      display += "\n"
    end

    display += (0..6).map {|x| " #{x} "}.join
    display
  end













end
