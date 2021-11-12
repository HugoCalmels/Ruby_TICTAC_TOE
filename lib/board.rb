class Board

  attr_accessor :a1, :a2, :a3, :b1, :b2, :b3, :c1, :c2, :c3

  def initialize
    # Init 9 cases
    @a1 = BoardCase.new(' ')
    @a2 = BoardCase.new(' ')
    @a3 = BoardCase.new(' ')
    @b1 = BoardCase.new(' ')
    @b2 = BoardCase.new(' ')
    @b3 = BoardCase.new(' ')
    @c1 = BoardCase.new(' ')
    @c2 = BoardCase.new(' ')
    @c3 = BoardCase.new(' ')
  end

end