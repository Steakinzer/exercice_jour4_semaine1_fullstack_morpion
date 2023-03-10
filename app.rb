# frozen_string_literal: true

require 'bundler'
Bundler.require

$LOAD_PATH.unshift File.expand_path('lib', __dir__)
require 'board'
require 'show'
require 'application'
require 'player'
require 'tour'

# Creation des joueurs et de la grille
puts 'Nom du premier joueur'
player1 = gets.chomp
puts "#{player1} tu as la croix X \n".colorize(:magenta)
puts 'Nom du deuxieme joueur'
player2 = gets.chomp
puts "#{player2} tu as le rond O\n".colorize(:yellow)
create = Application.new(player1.to_s, player2.to_s)
game1 = Board.new(create.player1.name, create.player2.name)
show = Show.new(game1.a, game1.b, game1.c)
show.screen
puts ''
# Lancement du jeu
while game1.is_win? != true
  # joueur 1
  puts "#{create.player1.name}: Tu as la croix X".colorize(:magenta)
  round1 = Tour.new(create.player1, game1)
  round1.choice while round1.taken == false
  show.screen
  break if game1.is_win? == true

  # joueur 2
  puts "#{create.player2.name}: Tu as le cercle O".colorize(:yellow)
  round2 = Tour.new(create.player2, game1)
  round2.choice while round2.taken == false
  show.screen
end

# binding.pry
# puts "end of program"
