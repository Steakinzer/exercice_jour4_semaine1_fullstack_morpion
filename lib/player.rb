# frozen_string_literal: true

class Player
  attr_accessor :name, :symbol

  def initialize(name, croix_rond)
    @name = name
    @symbol = croix_rond
  end
end
