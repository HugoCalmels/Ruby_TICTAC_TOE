class Show

  attr_accessor :board

  def initialize(board)
    @board = board
  end

  def to_screen
    puts '*' * 13
    puts "* #{@board.a1.content} * #{@board.a2.content} * #{@board.a3.content} *"
    puts '*' * 13
    puts "* #{@board.b1.content} * #{@board.b2.content} * #{@board.b3.content} *"
    puts '*' * 13
    puts "* #{@board.c1.content} * #{@board.c2.content} * #{@board.c3.content} *"
    puts "*" * 13

  end
end