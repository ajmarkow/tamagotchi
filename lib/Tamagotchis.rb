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

  def set_food_level(amount, operation)
    if operation == "feed"
      @food_level = +amount
    else
      @food_level = -amount
    end
    return @food_level
  end

  def time_passes(days)
    @food_level -= days * 1
  end

  def play_with_pet(time = 30)
    @food_level += time
    @sleep_level += time
    @activity_level += time
  end

  def take_a_nap(hours)
    if hours == 8
      @sleep_level += 1
    elsif hours <= 4
      @sleep_level += 0.5
    end
  end
end
