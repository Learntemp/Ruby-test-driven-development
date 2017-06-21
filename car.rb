class Garage
  def initialize
  @arr =[]
  end

  def list_cars
  @arr
  end

  def add_car(v)
    @arr.push(v)
  end

  def sort_by_model
    @arr.sort_by {|k| k.class.to_s}
  end

  def sort_by_year
    @arr.sort_by {|k| k.year}
  end

  def sort_by_model_then_year
    @arr.sort_by { |k| [k.class.to_s,k.year]}
  end

end

class Vehicle
end

class Car
  def initialize
    @wheels = 4
    @year = 2000
    @lights = "lights off"
    @signal = "turn signals off"
    @speed = 0
  end

  def wheels
    @wheels
  end

  def left_signal
    @signal = "Left turn signal on"
  end

  def right_signal
    @signal = "Right turn signal on"
  end

  def signals_off
    @signal = "turn signals off"
  end

  def speed
    @speed.to_s + "km/h"
  end

  def lights_toggle
    if lights == "lights off"
      @lights = "lights on"
    elsif lights == "lights on"
      @lights = "lights off"
    end
  end

  def honk_horn
    return "BEEP!"
  end

  def lights
    @lights
  end

  def signal
    @signal
  end

  def year
    @year
  end
end

class Toyota<Car
  attr_accessor :year

  def initialize
    super
    @year = 1995
  end
  def horn
    return "whoop"
  end
  def speed_up
    @speed = @speed + 7
  end
  def slow_down
    @speed = @speed - 5
  end
  def information
    return "The car has #{@wheels} wheels, The car is from #{@year}, The #{@lights}, The #{@signal}, The car is going #{@speed}"
  end
end
# "The car has 4 wheels, The car is from 2000, The lights off,The turn signal off,The car is going 0"
class Tata<Car
  attr_accessor :year

  def initialize
    super
    @year = 1985
  end
  def horn
    return "beep"
  end
  def speed_up
    @speed = @speed + 2
  end
  def slow_down
    @speed = @speed - 1.25
  end
end

class Tesla<Car
  attr_accessor :year

  def initialize
    super
    @year = 2017
  end
  def horn
    return "Beep-bee-bee-boop-bee-doo-weep"
  end
  def speed_up
    @speed = @speed + 10
  end
  def slow_down
    @speed = @speed - 7
  end
end
