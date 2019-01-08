# class Person
#   def set_given_name(name)
#     @given_name = name
#   end
#
#   def get_given_name()
#     @given_name
#   end
#
# end

# then you can create new instances of the Person class

# a_person = Person.new()
# a_person.set_given_name('Bilbo')

class Vehicle
  def initialize(lights='off', signal='off', speed=0)
    @lights=lights
    @signal=signal
    @speed=speed
  end
  def light_switch
    @lights = @lights == 'off' ? 'on' : 'off'
  end
  def turn_signal (direction)
      if direction == 'left'
        @signal = 'left'
      elsif direction == 'right'
        @signal = 'right'
      else @signal = 'off'
      end
  end
  def odometer
    @speed
  end
  # def name
  #   return self
  # end
  def carInfo
    return "Make: #{@make}, Model Year: #{@model_year}, Wheels: #{@wheels}"
  end
end

class Car < Vehicle
  attr_accessor :model, :model_year
  def initialize(model_year=0, model='')
    @wheels = 4
    @lights='off'
    @speed=0
    @model_year=model_year
    @make=make
    @model=model
  end
  def wheels
    @wheels
  end
  def make
    @make
  end
  # def acceleration
  #   @acceleration
  # end
  # def brake num
  #   @speed = @speed - num
  # end
end

class Tesla < Car
  def make
    @make='Tesla'
  end
  def acceleration
    @speed+=10
  end
  def brake
    @speed-=7
    @speed= @speed <= 0 ? 0 : @speed
  end
end

class Tata < Car
  def make
    @make='Tata'
  end
  def acceleration
    @speed+=2
  end
  def brake
    @speed-=1.25
    @speed= @speed <= 0 ? 0 : @speed
  end
end

class Toyota < Car
  def make
    @make='Toyota'
  end
  def acceleration
    @speed+=7
  end
  def brake
    @speed-=5
    @speed= @speed <= 0 ? 0 : @speed
  end
end


my_vehicle = Vehicle.new
my_car = Car.new
my_tesla = Tesla.new(2019, 'S')
my_tesla_2 = Tesla.new(2010, 'Model 3')
my_tesla_3 = Tesla.new(2017, 'Model X')
my_tata = Tata.new(1999, 'Brown')
my_toyota = Toyota.new(2001, 'Camry')
# p my_tata.acceleration
# p my_tata.acceleration
# p my_tata.acceleration
# p my_tata.brake
# p my_tata.brake
# my_collection = [
#   my_tesla.carInfo,
#   my_tata.carInfo,
#   my_toyota.carInfo]
# sorted_my_collection = my_collection.sort

 my_car_collection = [
  my_tesla, my_tata, my_toyota
]

my_car_collection.sort {|x,y| x.model_year <=> y.model_year}
my_car_collection.sort {|x,y| x.model <=> y.model}
p my_car_collection.sort {|x,y| [x.model, x.model_year] <=> [y.model, y.model_year]}
