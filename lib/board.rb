class Board
  attr_accessor :a, :b, :c

  def initialize(player1, player2)
    @a = [" ", " ", " "]
    @b = [" ", " ", " "]
    @c = [" ", " ", " "]
    @player1 = player1
    @player2 = player2
  end

  def is_win?
    arrwinx = []
    arrwino = []
    #Check lines
    arrwinx <<  @a.count("X")
    arrwino <<  @a.count("O")
    arrwinx <<  @b.count("X")
    arrwino <<  @b.count("O")
    arrwinx <<  @c.count("X")
    arrwino <<  @c.count("O")
    #Check column
    @a.length.times do |i|
      if @a[i-1].include?("X") && @b[i-1].include?("X") && @c[i-1].include?("X")
        arrwinx << 3
      end
      if @a[i-1].include?("O") && @b[i-1].include?("O") && @c[i-1].include?("O")
        arrwino << 3
      end
    end
    #Check diagonals
    #Diag 1
    if @a[0].include?("X") && @b[1].include?("X") && @c[2].include?("X")
      arrwinx << 3
    end
    if @a[0].include?("O") && @b[1].include?("O") && @c[2].include?("O")
      arrwino << 3
    end
    #Diag 2
    if @a[2].include?("X") && @b[1].include?("X") && @c[0].include?("X")
      arrwinx << 3
    end
    if @a[2].include?("O") && @b[1].include?("O") && @c[0].include?("O")
      arrwino << 3
    end
    #Match nul
    if (@a.select{|i| i=~(/[a-zA-Z]/)} + @b.select{|i| i=~(/[a-zA-Z]/)} + @c.select{|i| i=~(/[a-zA-Z]/)}).length == 9
      puts "MATCH NUL !".colorize(:color => :green, :mode => :bold)
      return true
    end
    #Annonce du gagnant
    if arrwinx.include?(3)
      puts "BRAVO #{@player1} tu as gagné".colorize(:color => :green, :mode => :bold)
      return true
    elsif arrwino.include?(3)
      puts "BRAVO #{@player2}tu as gagné".colorize(:color => :green, :mode => :bold)
      return true
    else
      return false
    end
  end
end