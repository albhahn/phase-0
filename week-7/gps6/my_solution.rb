# Virus Predictor

# I worked on this challenge with: Sean Massih.
# We spent [1] hours on this challenge.

# EXPLANATION OF require_relative
# Will look for a file by name that you call relative to current directory.
#

class VirusPredictor
  # Define initialize, which takes in 3 arguments and then sets to instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # Define virus_effects, which is calling the above methods

  def virus_effects
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
    #predicted_deaths_and_speed(@population_density, @population, @state)
  end
  private

  # Define predicted_deaths, which is using flow control to print the numbers_of_death per state depending on the argument population_density
=begin
  def predicted_deaths_and_speed(population_density, population, state)
    speed = 0.0
    case @population_density
      when 200..
        number_of_deaths = (@population * 0.4).floor
          speed += 0.5
      when 150..199
        number_of_deaths = (@population * 0.3).floor
          speed += 1.0
      when 100..149
        number_of_deaths = (@population * 0.2).floor
          speed += 1.5
      when 50..99
        number_of_deaths = (@population * 0.1).floor
          speed += 2.0
      else
        number_of_deaths = (@population * 0.05).floor
          speed += 2.5
    end
    print "#{@state} will lose #{number_of_deaths} people in this outbreak and will spread across the state in #{speed} months.\n\n"

  end
=end
  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
    case @population_density
      when 200..
      number_of_deaths = (@population * 0.4).floor
      when 150..199
      number_of_deaths = (@population * 0.3).floor
      when 100..149
      number_of_deaths = (@population * 0.2).floor
      when 50..99
      number_of_deaths = (@population * 0.1).floor
      else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  # Define speed_spread, which is using flow control to puts the speed_of_spread depending on the argument population_density. Also has a counter depending on the flow control.
  def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    case @population_density
      when 200..
      speed += 0.5
      when 150..199
      speed += 1
      when 100..149
      speed += 1.5
      when 50..99
      speed += 2
      else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end


STATE_DATA = {
  "Alabama" => {population_density: 94.65, population: 4822023},
  "Alaska" => {population_density: 1.1111, population: 731449},
  "Arizona" => {population_density: 57.05, population: 6553255},
  "Arkansas" => {population_density: 56.43, population: 2949131},
  "California" => {population_density: 244.2, population: 38041430},
  "Colorado" => {population_density: 49.33, population: 5187582},
  "Connecticut" => {population_density: 741.4, population: 3590347},
  "Delaware" => {population_density: 470.7, population: 917092},
  "Florida" => {population_density: 360.2, population: 19317568},
  "Georgia" => {population_density: 172.5, population: 9919945},
  "Hawaii" => {population_density: 216.8, population: 1392313},
  "Idaho" => {population_density: 19.15, population: 1595728},
  "Illinois" => {population_density: 231.9, population: 12875255},
  "Indiana" => {population_density: 182.5, population: 6537334},
  "Iowa" => {population_density: 54.81, population: 3074186},
  "Kansas" => {population_density: 35.09, population: 2885905},
  "Kentucky" => {population_density: 110.0, population: 4380415},
  "Louisiana" => {population_density: 105.0, population: 4601893},
  "Maine" => {population_density: 43.04, population: 1329192},
  "Maryland" => {population_density: 606.2, population: 5884563},
  "Massachusetts" => {population_density: 852.1, population: 6646144},
  "Michigan" => {population_density: 174.8, population: 9883360},
  "Minnesota" => {population_density: 67.14, population: 5379139},
  "Mississippi" => {population_density: 63.50, population: 2984926},
  "Missouri" => {population_density: 87.26, population: 6021988},
  "Montana" => {population_density: 6.86, population: 1005141},
  "Nebraska" => {population_density: 23.97, population: 1855525},
  "Nevada" => {population_density: 24.8, population: 2758931},
  "New Hampshire" => {population_density: 147.0, population: 1320718},
  "New Jersey" => {population_density: 1205, population: 8864590},
  "New Mexico" => {population_density: 17.16, population: 2085538},
  "New York" => {population_density: 415.3, population: 19570261},
  "North Carolina" => {population_density: 200.6, population: 9752073},
  "North Dakota" => {population_density: 9.92, population: 699628},
  "Ohio" => {population_density: 282.5, population: 11544225},
  "Oklahoma" => {population_density: 55.22, population: 3814820},
  "Oregon" => {population_density: 40.33, population: 3899353},
  "Pennsylvania" => {population_density: 285.3, population: 12763536},
  "Rhode Island" => {population_density: 1016, population: 1050292},
  "South Carolina" => {population_density: 157.1, population: 4723723},
  "South Dakota" => {population_density: 10.86, population: 833354},
  "Tennessee" => {population_density: 156.6, population: 6456243},
  "Texas" => {population_density: 98.07, population: 26059203},
  "Utah" => {population_density: 34.3, population: 2855287},
  "Vermont" => {population_density: 67.73, population: 626011},
  "Virginia" => {population_density: 207.3, population: 8185867},
  "Washington" => {population_density: 102.6, population: 6724540},
  "Washington,D.C."=> {population_density: 10357, population: 632323},
  "West Virginia" => {population_density: 77.06, population: 1855413},
  "Wisconsin" => {population_density: 105.2, population: 5726398},
  "Wyoming" => {population_density: 5.851, population: 576412}
}

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

=begin
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
=end

STATE_DATA.each do |state,state_data|
  #p state
  #p state_data
  #p state[state_data]
  VirusPredictor.new(state, state_data[:population_density], state_data[:population]).virus_effects

  #"Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population]
end


#=======================================================================
# Reflection Section
=begin
What are the differences between the two different hash syntaxes shown in the state_data file?
The main hash key is a string and the inner keys are symbols.

What does require_relative do? How is it different from require?
require_relative will look for a file by name that you call relative to the current directory. require is used to load ruby files through the interpreter.

What are some ways to iterate through a hash?
You can iterate through a hash by accessing both or either the key or the value.

When refactoring virus_effects, what stood out to you about the variables, if anything?
What stood out was that both the methods inside were basically taking in the same instance variables.

What concept did you most solidify in this challenge?
Iterating through a hash and implementing a method on them. The flexibility of instance varaibles. Refactoring code and methods to be more DRY.

=end