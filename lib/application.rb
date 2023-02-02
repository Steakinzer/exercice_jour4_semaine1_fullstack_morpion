# frozen_string_literal: true

class Application
  attr_accessor :player1, :player2

  def initialize(name1, name2)
    @player1 = Player.new(name1.to_s, 'X'.colorize(color: :red, mode: :bold))
    @player2 = Player.new(name2.to_s, 'O'.colorize(color: :light_green, mode: :bold))
  end
end
