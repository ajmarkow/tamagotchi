require "rspec"

class Tamagotchi
  attr_accessor(:food_level, :sleep_level, :name, :activity_level)
  @@alltamagotchis = {}

  def initialize(attributes)
    @name = attributes.fetch(:name)
    @food_level = attributes.fetch(:food_level)
    @sleep_level = attributes.fetch(:sleep_level)
    @activity_level = attributes.fetch(:activity_level)
  end

  def name
    @name
  end

  def is_alive
    if @food_level > 0 && @sleep_level > 0 && @activity_level > 0
      return true
    else
      return false
    end
  end
end
