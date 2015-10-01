# Virus Predictor

# I worked on this challenge [with: Sam Purcell].
# We spent [1] hours on this challenge.

# EXPLANATION OF require_relative
# Allows a file to use data/features from another file.
# The difference: require_relative allows you to use a relative file path, require needs to specify
# the current working directory.
require_relative 'state_data'

class VirusPredictor
# sets instance variables set the the parameters passed in
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
# calling predicted_deaths method
# calling speed_of_spread method
  def virus_effects
    predicted_deaths()
    speed_of_spread()
  end

  private
# checks population density and sets number of deaths based on it
  def predicted_deaths()
    # predicted deaths is solely based on population density
    # prints string with numbers and state included
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

    number_of_deaths = case @population_density
    when (0...50)
      (@population * 0.05).floor
    when (51...100)
      (@population * 0.1).floor
    when (101...150)
      (@population * 0.2).floor
    when (151...200)
      (@population * 0.3).floor
    else
      (@population * 0.4).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
# checks population density and sets speed based on it
# prints the speed
  def speed_of_spread() #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    speed = 0.0

    # if @population_density >= 200
    #   speed += 0.5
    # elsif @population_density >= 150
    #   speed += 1
    # elsif @population_density >= 100
    #   speed += 1.5
    # elsif @population_density >= 50
    #   speed += 2
    # else
    #   speed += 2.5
    # end

    speed = case @population_density
    when (0...50)
      2.5
    when (51...100)
      2
    when (101...150)
      1.5
    when (151...200)
      1
    else
      0.5
    end


    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
STATE_DATA.each do |key, value|
  state = VirusPredictor.new(key, value[:population_density], value[:population])
  state.virus_effects
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
# One is a Hash Rocket and the other is a Hash Colon. The Hash rocket uses the '=>' symbol in between
# the key and value. The Hash Colon uses a symbol for the key where it ends with a colon and then is
# followed by the value. 
# Hash Rocket: Hash = {"key" => "value"}
# Hash Colon: Hash = {key: "value"}

# What does require_relative do? How is it different from require?
# require loads the name given and gives you access to extentions in the Ruby library. There is no '.rb'
# at the end because it doesn't necessarily have to be a Ruby file because not all extensions are Ruby
# files. require_relative pulls from the relative directory. A file in another directory would cause an error.

# What are some ways to iterate through a hash?
# Some ways we can iterate through a hash is by using a method (in this challenge we simply used .each)
# where we can look for each key and hash. We could also use the .each_value method which iterated through
# the values of a hash.

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# I noticed that the variables had arguments that would also be used in the next methods, so taking
# them out would still allow the code to run.

# What concept did you most solidify in this challenge?
# I definitely have a better grasp of require and require_relative. I also saw private get tested so
# now I got a visual of how it works rather than just knowing its definition.