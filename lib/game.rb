class Game 
  attr_accessor :board, :whos_turn, :show, :win_condition

  def initialize
    first_init
    game 
  end

  def first_init
    puts "Welcome to Tic Tac Toe game !"
    player1 = Player.new
    player2 = Player.new
    @players = []
    @players << player1
    @players << player2

    @board = Board.new()
    @show = Show.new(board)
    @whos_turn = 1
    @win_condition = false
    end

  def game

    while @whos_turn < 10 && @win_condition != true
     while @win_condition != true
    puts
    puts @show.to_screen
    if @whos_turn.even?
    puts "#{@players[0].name}Where would you like to play ?"
    else
      puts "#{@players[1].name}Where would you like to play ?"
    end
    print "> "

    play(gets.chomp)
    has_anyone_won?
    @whos_turn += 1
    end
    if @win_condition == true
      puts " - 1 -  to play again"
      puts " - 2 -  to quit the game"
      print "> "
      end_game_selection = gets.chomp
      if end_game_selection == "1"
        first_init
        game 
      end
      break if end_game_selection == "2"
    end
    end

  end

  def play(string)
    mark = ''
 
    if @whos_turn.even?
      mark = "O"
    else 
      mark = "X"
    end
    

    if string == "a1" && is_empty?(@board.a1.content) == true
      @board.a1.content = mark
    elsif string == "a2" && is_empty?(@board.a2.content) == true
      @board.a2.content = mark
    elsif string == "a3" && is_empty?(@board.a3.content) == true
      @board.a3.content = mark
    elsif string == "b1" && is_empty?(@board.b1.content) == true
      @board.b1.content = mark
    elsif string == "b2" && is_empty?(@board.b2.content) == true
      @board.b2.content = mark
    elsif string == "b3" && is_empty?(@board.b3.content) == true
      @board.b3.content = mark
    elsif string == "c1" && is_empty?(@board.c1.content) == true
      @board.c1.content = mark
    elsif string == "c2" && is_empty?(@board.c2.content) == true
      @board.c2.content = mark
    elsif string == "c3" && is_empty?(@board.c3.content) == true
      @board.c3.content = mark
    else 
      puts "Error ! Please type a correct case"
      print "> "
      play(gets.chomp)
    end


    def has_anyone_won?
      mark = ''
      winner = ""

      if @whos_turn.even?
        mark = "O"
        winner = @players[0].name
      else 
        mark = "X"
        winner = @players[1].name
      end

      if (@board.a1.content == mark && @board.a2.content == mark && @board.a3.content == mark) ||
          (@board.a1.content == mark && @board.b1.content == mark && @board.c1.content == mark ) ||
          (@board.a1.content == mark && @board.b2.content == mark && @board.c3.content == mark ) ||
          (@board.a3.content == mark && @board.b2.content == mark && @board.c1.content == mark ) ||
          (@board.a3.content == mark && @board.b3.content == mark && @board.c3.content == mark ) ||
          (@board.b1.content == mark && @board.b2.content == mark && @board.b3.content == mark ) ||
          (@board.c1.content == mark && @board.c2.content == mark && @board.c3.content == mark ) ||
          (@board.a2.content == mark && @board.b2.content == mark && @board.c2.content == mark ) 
          puts @show.to_screen
        puts "#{winner} has won the game"
        @win_condition = true
      elsif @whos_turn == 9
        puts @show.to_screen
        puts "TIE MATCH" 
        @win_condition = true
      else 
        @win_condition = false
      end
    end

  end

  def is_empty?(selected_case)
    if selected_case == ' '
      return true
    else
      return false
    end
  end

  def menu 

  end


end