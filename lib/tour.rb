class Tour
  attr_accessor :player, :board, :taken

  def initialize(player, board)
    @player = player
    @board = board
    @taken = false
  end

  def choice
    puts "Quelle case vas-tu choisir ?".colorize(:color => :light_white)
    choix = gets.chomp.downcase
    case choix
    when "a1"
      if @board.a[0].match(/\s/)
        @board.a[0] = @player.symbol
        @taken = true
      else
        puts "Cette case est déjà prise".colorize(:light_blue ).colorize( :background => :red)
      end
    when "a2"
      if @board.a[1].match(/\s/)
        @board.a[1] = @player.symbol
        @taken = true
      else
        puts "Cette case est déjà prise".colorize(:light_blue ).colorize( :background => :red)
      end
    when "a3"
      if @board.a[2].match(/\s/)
        @board.a[2] = @player.symbol
        @taken = true
      else
        puts "Cette case est déjà prise".colorize(:light_blue ).colorize( :background => :red)
      end
    when "b1"
      if @board.b[0].match(/\s/)
        @board.b[0] = @player.symbol
        @taken = true
      else
        puts "Cette case est déjà prise".colorize(:light_blue ).colorize( :background => :red)
      end
    when "b2"
      if @board.b[1].match(/\s/)
        @board.b[1] = @player.symbol
        @taken = true
      else
        puts "Cette case est déjà prise".colorize(:light_blue ).colorize( :background => :red)
      end
    when "b3"
      if @board.b[2].match(/\s/)
        @board.b[2] = @player.symbol
        @taken = true
      else
        puts "Cette case est déjà prise".colorize(:light_blue ).colorize( :background => :red)
      end
    when "c1"
      if @board.c[0].match(/\s/)
        @board.c[0] = @player.symbol
        @taken = true
      else
        puts "Cette case est déjà prise".colorize(:light_blue ).colorize( :background => :red)
      end
    when "c2"
      if @board.c[1].match(/\s/)
        @board.c[1] = @player.symbol
        @taken = true
      else
        puts "Cette case est déjà prise".colorize(:light_blue ).colorize( :background => :red)
      end
    when "c3"
      if @board.c[2].match(/\s/)
        @board.c[2] = @player.symbol
        @taken = true
      else
        puts "Cette case est déjà prise".colorize(:light_blue ).colorize( :background => :red)
      end
    end
  end

end