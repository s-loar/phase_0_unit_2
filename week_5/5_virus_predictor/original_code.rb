# U2.W5: Virus Predictor

# I worked on this challenge by myself.

# 1) EXPLANATION OF require_relative
# This tells ruby that it can find and load the 'state_data' file relative to
# this file. In this case it is in the same folder.

# 2) Take a look at the state_data file. What is going on with this hash? What 
# does it have in it? (HINT: There are two different syntax used for hashes here. 
# What's the difference?)
# The state data is a nested hash. The outside hash has the state name as the key 
# and a hash of the four population data as the inside hash. The outside hash uses 
# the => to make the relation between the key and value. And the inside hash uses
# the : to deliminate the key value sets

require_relative 'state_data'

class VirusPredictor

  # This method initializes the class when new is invoked. It set the instance variables
  # for the class with the values passed in the parameters
  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end

  # This method calls 2 private methods using the classes instance variables
  def virus_effects  #HINT: What is the SCOPE of instance variables? The VirusPredictor Class, so why pass them??
    # initial code
    #predicted_deaths(@population_density, @population, @state)
    #speed_of_spread(@population_density, @state)

    # refactored 
    predicted_deaths
  end

  # This method prints out all state data for Release #4
  def all_states_report( state_data )
    state_data.each { |state_name,state_values| 
      @state = state_name
      @population = state_values[:population]
      @population_density = state_values[:population_density]
      @region = state_values[:region]
      @next_region = state_values[:regional_spread]
      predicted_deaths
    }
  end 

  private  #what is this?  what happens if it were cut and pasted above the virus_effects method
  # This makes everything below it private and not accessible outside the class. If we moved this
  # up to above virus_effects, then that would not be available outside the class and the calls 
  # to it would fail.

  # This method calculates the number of deaths and prints a string of the calculated value
  # parameters removed to refactor virus_effects
  def predicted_deaths #(population_density, population, state)
    # initial code
    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else 
    #   number_of_deaths = (@population * 0.05).floor
    # end

    # refactored code to DRY out code for 7)
    speed = 0.0
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
      speed += 0.5
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
      speed += 1
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
      speed += 1.5
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
      speed += 2
    else 
      number_of_deaths = (@population * 0.05).floor
      speed += 2.5
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
    puts " and will spread across the state in #{speed} months.\n\n"
  end

  # This method calculates the spread of the disease based on population density
  # parameters removed to refactor virus_effects
  def speed_of_spread #(population_density, state) #in months
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else 
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population], STATE_DATA["Alabama"][:region], STATE_DATA["Alabama"][:regional_spread]) 
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population], STATE_DATA["New Jersey"][:region], STATE_DATA["New Jersey"][:regional_spread]) 
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population], STATE_DATA["California"][:region], STATE_DATA["California"][:regional_spread]) 
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population], STATE_DATA["Alaska"][:region], STATE_DATA["Alaska"][:regional_spread]) 
alaska.virus_effects

# 4) implement a new feature that print a report for all states
alaska.all_states_report( STATE_DATA )

# 
