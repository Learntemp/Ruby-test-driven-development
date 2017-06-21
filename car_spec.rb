require 'rspec'
require_relative 'car'
# Story: As a programmer, I can make a vehicle.
# Hint: Test that Vehicle.new does not raise any errors.
describe Vehicle do
  it "has to be real" do
    expect{Vehicle.new}.to_not raise_error
  end
end

#
# Story: As a programmer, I can make a car.
# Hint: Test that creating an instance of the new class does not raise any errors.
#
describe Car do
  it "has to be real" do
    expect{Car.new}.to_not raise_error
  end
end

# Story: As a programmer, I can tell how many wheels a car has; default is four.
# Hint: initialize the car to have four wheels, then create a method to return the number of wheels.
#
describe Car do
  it "should return four" do
    expect(Car.new.wheels).to eq(4)
  end
end
# Story: As a programmer, I can honk the horn.
# Hint: When I call honk_horn, I get a "BEEP!".
#
describe Car do
  it "should return BEEP!" do
    expect(Car.new.honk_horn).to eq("BEEP!")
  end
end

# Story: As a programmer, I can make a Toyota car.
# Hint: Test that class Toyota which inherits from class Car can be created.
#
describe Toyota do
  it "has to be real and be child of Car" do
    expect{Toyota.new}.to_not raise_error
    expect(Toyota.superclass).to eq(Car)
  end
end


# Story: As a programmer, I can honk the horn of a Toyota car which makes the sound "whoop".
#
describe Toyota do
  it "should return whoop" do
    expect(Toyota.new.horn).to eq("whoop")
  end
end
# Story: As a programmer, I can make a Tata car.
#
describe Tata do
  it "has to be real" do
    expect{Tata.new}.to_not raise_error
  end
end
# Story: As a programmer, I can honk the horn of a Tata car - "beep".
#
describe Tata do
  it "should return beep" do
    expect(Tata.new.horn).to eq("beep")
  end
end
# Story: As a programmer, I can make a Tesla car.
#
describe Tesla do
  it "has to be real" do
    expect{Tesla.new}.to_not raise_error
  end
end
# Story: As a programmer, I can honk the horn of Tesla - "Beep-bee-bee-boop-bee-doo-weep".
#
describe Tesla do
  it "should return Beep-bee-bee-boop-bee-doo-weep" do
    expect(Tesla.new.horn).to eq("Beep-bee-bee-boop-bee-doo-weep")
  end
end
# Story: As a programmer, I can tell which model year a car is from. Model years never change.
# Hint: Make model year part of the initialization.
#
describe Car do
  it "should return a year" do
    expect(Car.new.year).to eq(2000)
    expect(Toyota.new.year).to eq(1995)
    expect(Tesla.new.year).to eq(2017)
    expect(Tata.new.year).to eq(1985)
  end
end

# Story: As a programmer, I can turn on and off the lights on a given Vehicle.
# Hint: Create method(s) to allow programmer to turn lights on and off. Which class are the methods in?
#
describe Car do
  it "should update the lights" do
    expect(Car.new.lights).to eq("lights off")
    expect(Car.new.lights_toggle).to eq("lights on")
  end
end
# Story: As a programmer, I can determine if the lights are on or off. Lights start in the off position.
describe Car do
  it "should update the lights" do
    expect(Car.new.lights).to eq("lights off")
    expect(Car.new.lights_toggle).to eq("lights on")
  end
end

# Story: As a programmer, I can signal left and right. Turn signals starts off.
#
describe Car do
  it "should be off at the beginning and left and right should work" do
    expect(Car.new.signal).to eq("turn signals off")
    expect(Car.new.left_signal).to eq("Left turn signal on")
    expect(Car.new.right_signal).to eq("Right turn signal on")
    expect(Car.new.signals_off).to eq("turn signals off")
  end
end
# Story: As a programmer, I can determine the speed of a car. Speed starts at 0 km/h.
#
describe Car do
  it "should return 0km/h" do
    expect(Car.new.speed).to eq("0km/h")
    expect(Toyota.new.speed).to eq("0km/h")
    expect(Tesla.new.speed).to eq("0km/h")
    expect(Tata.new.speed).to eq("0km/h")
  end
end
# Story: As a programmer, I can speed my Teslas up by 10 km/h per acceleration.
#
describe Tesla do
  it "should return 10km/h" do
    expect(Tesla.new.speed_up).to eq(10)
  end
end
# Story: As a programmer, I can slow my Teslas down by 7 km/h per braking.
#
describe Tesla do
  it "should return 10" do
    expect(Tesla.new.speed_up).to eq(10)
  end
end
# describe Tesla do
#   it "should return 7km/h less than previous speed"
describe Tesla do
  it "should return -7" do
    expect(Tesla.new.slow_down).to eq(-7)
  end
end
# Story: As a programmer, I can speed my Tatas up by 2 km/h per acceleration.
#
describe Tata do
  it "should return 2" do
    expect(Tata.new.speed_up).to eq(2)
  end
end
# Story: As a programmer, I can slow my Tatas down by 1.25 km/h per braking.
#
describe Tata do
  it "should return -1.25" do
    expect(Tata.new.slow_down).to eq(-1.25)
  end
end
# Story: As a programmer, I can speed my Toyotas up by 7 km/h per acceleration.
#
describe Toyota do
  it "should return 7" do
    expect(Toyota.new.speed_up).to eq(7)
  end
end
# Story: As a programmer, I can slow my Toyotas down by 5 km/h per braking.
#
describe Toyota do
  it "should return -5" do
    expect(Toyota.new.slow_down).to eq(-5)
  end
end
# Story: As a programmer, I can call upon a car to tell me all it's information.
# Hint: Implement to_s on one or more classes. You can call a super class's to_s with super.
#
describe Toyota do
  it "should return the initilaized info on a car" do
    expect(Toyota.new.information).to eq("The car has 4 wheels, The car is from 1995, The lights off, The turn signals off, The car is going 0")
  end
end

# Story: As a programmer, I can store and retrieve all of my cars from a garage.
# Hint: "Garage" is a noun, "store" and "retrieve" are verbs.
#
describe Garage do
  it "should update" do
    a = Garage.new
    car1 = Toyota.new
    expect{a.add_car(car1)}.to change{a.list_cars}
  end
end

# Story: As a programmer, I can sort the cars in my garage based on model year.
#
describe Garage do
  it "should update" do
    a = Garage.new
    car1 = Tesla.new
    car2 = Toyota.new
    car3 = Car.new
    car4 = Tata.new
    a.add_car(car1)
    a.add_car(car2)
    a.add_car(car3)
    a.add_car(car4)
    expect(a.sort_by_year).to_not eq(a.list_cars)
  end
end

# Story: As a programmer, I can sort the cars in my garage based on model.
# Hint: Sort based on class name.
#
describe Garage do
  it "should update" do
    a = Garage.new
    car1 = Tesla.new
    car2 = Toyota.new
    a.add_car(car2)
    a.add_car(car1)
    expect(a.sort_by_model).to_not eq(a.list_cars)
  end
end
# Story: As a programmer, I can sort the cars in my garage based on model and then year.
# Hint: Find out how the spaceship operator can help you with an array.
describe Garage do
  it "should update" do
    a = Garage.new
    b = Toyota.new
    c = Tesla.new
    d = Toyota.new
    car1 = Tesla.new
    car2 = Toyota.new
    car3 = Car.new
    car4 = Tata.new
    b.year = 2054
    c.year = 3452
    d.year = 1955
    a.add_car(b)
    a.add_car(c)
    a.add_car(d)
    a.add_car(car4)
    expect(a.sort_by_model_then_year).to_not eq(a.sort_by_model)
  end
end
