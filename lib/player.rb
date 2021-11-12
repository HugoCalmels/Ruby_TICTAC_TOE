class Player
  attr_accessor :name
  @@index_player = 1

  def initialize
    puts "Nom du joueur #{@@index_player}"
    print "> "
    @name = gets.chomp
    @@index_player += 1
  end

end