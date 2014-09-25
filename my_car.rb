# my_car.rb

class MyCar
  attr_accessor :color
  attr_reader :year, :model

  def initialize (year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
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
    puts "I have just stopped the car."
  end

  def info
    puts "My car is a #{color} #{year} #{model}"
  end

  def spray_paint(c)
    self.color = c
    puts "I have changed the color of my car to #{color}"
  end   

end   

bmw = MyCar.new(2011, "Blue", "BMW 328xi")  
bmw.info
bmw.speed_up(15)
bmw.brake(5)
bmw.speed_up(30)
bmw.brake(10)
bmw.shut_off
bmw.spray_paint("Red")
bmw.info



