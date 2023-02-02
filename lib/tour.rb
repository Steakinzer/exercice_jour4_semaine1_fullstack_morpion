# frozen_string_literal: true

class Tour
  attr_accessor :player, :board, :taken

  def initialize(player, board)
    @player = player
    @board = board
    @taken = false
  end

  def choice
    puts 'Quelle case vas-tu choisir ?'.colorize(color: :light_white)
    choix = gets.chomp.downcase
    case choix
    when 'a1','a2','a3'
      if @board.a[(choix[-1].to_i)-1].match(/\s/)
        @board.a[(choix[-1].to_i)-1] = @player.symbol
        @taken = true
      else
        puts 'Cette case est déjà prise'.colorize(:light_blue).colorize(background: :red)
      end
    when 'b1','b2','b3'
      if @board.b[(choix[-1].to_i)-1].match(/\s/)
        @board.b[(choix[-1].to_i)-1] = @player.symbol
        @taken = true
      else
        puts 'Cette case est déjà prise'.colorize(:light_blue).colorize(background: :red)
      end
    when 'c1','c2','c3'
      if @board.c[(choix[-1].to_i)-1].match(/\s/)
        @board.c[(choix[-1].to_i)-1] = @player.symbol
        @taken = true
      else
        puts 'Cette case est déjà prise'.colorize(:light_blue).colorize(background: :red)
      end
    end
  end
end
