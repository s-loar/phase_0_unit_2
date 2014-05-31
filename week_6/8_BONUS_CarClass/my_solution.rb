# U2.W6: Create a Car Class from User Stories


# I worked on this challenge by myself.

# User Stories
# As a video game player, I want to be able to create a new car and set it's model and color so I can customize it in the video game.
# As a video game player, I need to be able to define a distance to drive so I can follow directions appropriately.
# As a video game player, I'd like to be able to see the speed I am traveling, so I can properly accelerate or decelerate.
# As a video game player, I want to be able to turn left or right so I can navigate a city and follow directions.
# As a video game player, I want to be able to accelerate and decelerate the car to a defined speed so I can drive following the rules of the road.
# As a video game player, I want to keep track of the total distance I have travelled, so I can get paid for mileage.
# As a video game player, I want to be able to stop the car so I can follow traffic signs and signals.
# As a video game player, I would like to see output reflecting the latest action of my car so I can see a play-by-play of the pizza delivery.

# 2. Pseudocode
# Attributes
# model
# color
# dissance_to_drive
# current_speed
# distance_traveled
# actions

# Methods
# initialize( model, color )
# drive( distance_to_drive, speed_limit )
# turn( direction )
# change_speed( new_speed )
# stop
# show_distance_travelled
# display_log


# 3. Initial Solution
# class Car
#   attr_reader :current_speed, :distance_to_drive

#   def initialize( model, color )
#     @model= model
#     @color = color
#     @actions = []
#     @distance_traveled = 0.0
#     @current_speed = 0
#   end

#   def drive( distance_to_drive, speed_limit=@current_speed )
#     @distance_to_drive = distance_to_drive
#     @current_speed = speed_limit
#     @distance_traveled += distance_to_drive
#     @actions << "Drove " + distance_to_drive.to_s + " miles at " + speed_limit.to_s + " mph."
#   end

#   def stop
#     @current_speed = 0
#     @actions << "Stopped."
#   end

#   def turn( direction )
#     @actions << "Turned " + direction + "."
#   end

#   def change_speed( new_speed )
#     @current_speed = new_speed
#     @actions << "Changed speed to " + new_speed.to_s + " mph."
#   end

#   def show_distance_travelled
#   	puts "You have travelled " + @distance_traveled.to_s + " miles."
#   end

#   def display_log
#     @actions.each { |action| puts action }
#   end

# end


# 4. Refactored Solution
class Car
  attr_reader :current_speed, :distance_to_drive

  def initialize( model, color )
    @model= model
    @color = color
    @actions = []
    @distance_traveled = 0.0
    @current_speed = 0
    @pizzas = []
  end

  def add_pizza( pizza )
  	@pizzas << pizza 
  	@actions << "Added a " + pizza.type + " pizza."
  end

  def deliver_pizza
  	@pizzas.reverse!
  	pizza = @pizzas.pop
  	@pizzas.reverse!
  	@actions << "Delivered a " + pizza.type + " pizza."
  end

  def number_of_pizzas_in_car
  	@pizzas.length
  end

  def drive( distance_to_drive, speed_limit=@current_speed )
    @distance_to_drive = distance_to_drive
    @current_speed = speed_limit
    @distance_traveled += distance_to_drive
    @actions << "Drove " + distance_to_drive.to_s + " miles at " + speed_limit.to_s + " mph."
  end

  def stop
    @current_speed = 0
    @actions << "Stopped."
  end

  def turn( direction )
    @actions << "Turned " + direction + "."
  end

  def change_speed( new_speed )
    @current_speed = new_speed
    @actions << "Changed speed to " + new_speed.to_s + " mph."
  end

  def show_distance_travelled
  	puts "You have travelled " + @distance_traveled.to_s + " miles."
  end

  def display_log
    @actions.each { |action| puts action }
  end

end

class Pizza
	attr_reader :type

	def initialize( type )
		@type = type 
	end
end



# 1. DRIVER TESTS GO BELOW THIS LINE
def assert
  raise "Assertion failed!" unless yield
end


# Create a new car of your desired model and type
honda = Car.new( "Accord", "red" )

# create some pizzas and put in the car
pepperoni = Pizza.new("Pepperoni")
honda.add_pizza( pepperoni )
delux = Pizza.new("Delux")
honda.add_pizza( delux )

assert { honda.number_of_pizzas_in_car == 2 }

# Drive .25 miles (speed limit is 25 mph)
honda.drive( 0.25, 25 )
assert { honda.current_speed == 25 }
assert { honda.distance_to_drive == 0.25 }
# At the stop sign, turn right
honda.stop
assert { honda.current_speed == 0 }

honda.deliver_pizza
assert { honda.number_of_pizzas_in_car == 1 }

honda.turn( "right" )
# Drive 1.5 miles (speed limit is 35 mph)
honda.drive( 1.5, 35 )
assert { honda.distance_to_drive == 1.5 }
# At the school zone, check your speed
assert { honda.current_speed == 35 }
# Slow down to speed limit 15 mph
honda.change_speed( 15 )
assert { honda.current_speed == 15 }
# Drive .25 miles more miles
honda.drive( 0.25 )
assert { honda.distance_to_drive == 0.25 }
# At the stop sign, turn left
honda.stop
assert { honda.current_speed == 0 }
honda.turn("left")
# Drive 1.4 miles (speed limit is 35 mph)
honda.drive( 1.4, 35 )
assert { honda.distance_to_drive == 1.4 }
assert { honda.current_speed == 35 }
# Stop at your destination
honda.stop
assert { honda.current_speed == 0 }

honda.deliver_pizza
assert { honda.number_of_pizzas_in_car == 0 }
# Log your total distance travelled
honda.show_distance_travelled

# display the log of actions
honda.display_log



# 5. Reflection




