# vehicle.rb

module Offroadable
  def offroad
    "I am driving offroad"
  end
end    

class Vehicle
  attr_accessor :color
  attr_reader :year, :model

  @@number_of_vehicles = 0

  def initialize (year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
    @@number_of_vehicles += 1
  end  

  def to_s
    "My vehicle is a #{color} #{year} #{model}"
  end  

  def self.total_number_of_vehicles
    @@number_of_vehicles
  end  

  def speed_up (s)
    @speed += s
    puts "My speed increased by #{s} mph and is now #{@speed} mph"
  end
  
  def brake (s)
    @speed -= s
    puts "My speed decreased by #{s} mph and is now #{@speed} mph"
  end
  
  def shut_off 
    @speed = 0
    puts "I have just stopped the vehicle."
  end

  def spray_paint(c)
    self.color = c
    puts "I have changed the color of my vehicle to #{color}"
  end 

  def self.mileage(miles, gallons)
    puts "MPG is #{ miles / gallons }."
  end 

  def age
    puts "This vehicle is #{calculate_age} years old."
  end  

  private

  def calculate_age
    Time.now.year - self.year
  end   

end  

class MyCar < Vehicle
  FOUR_WHEELS = true
  
  def initialize (year, color, model)
    super
  end
  
end  

class MyTruck < Vehicle
  include Offroadable
  CARGO_BED = true

  def initialize (year, color, model)
    super
    @speed = 0
  end

end  


bmw = MyCar.new(2011, "Blue", "BMW 328xi")  
puts bmw
bmw.speed_up(15)
bmw.brake(5)
bmw.speed_up(30)
bmw.brake(10)
bmw.shut_off
bmw.spray_paint("Red")
puts bmw
puts MyCar.mileage(27, 1)
puts bmw
bmw.age

colorado = MyTruck.new(2005, "Red", "Chevy Colorado")
puts colorado

puts "Total vehicles is: #{Vehicle.total_number_of_vehicles}"

puts Vehicle.ancestors
puts MyCar.ancestors
puts MyTruck.ancestors




