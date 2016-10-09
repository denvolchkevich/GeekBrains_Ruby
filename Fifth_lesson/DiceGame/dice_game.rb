require_relative 'user'
require_relative 'dice_game/game'

module DiceGame

  VERSION = '1.0.1'

  def self.create(*users)
    Game.new *users
  end

  def self.version
    VERSION
  end

end
