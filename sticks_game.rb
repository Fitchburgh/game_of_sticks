class InvalidStartingSticks < StandardError
end

class SticksGame
  # @game_modes = [*10..100]
  # puts @game_modes

  attr_accessor :starting_sticks

  def initialize(starting_sticks)
    @takeaway_options = {
      "1" => 1,
      "2" => 2,
      "3" => 3
    }
    #this is how many sticks you want to play with
    @starting_sticks = starting_sticks

    if !(10..100).include? starting_sticks
      raise InvalidStartingSticks, "Please choose between 10 and 100 sticks to start with."
    end
  end

  def sticks_taken(user_choice)
    @user_choice = user_choice
    if @takeaway_options.has_key?(@user_choice)
      #I want this to use the value corresponding to the key that matches user input
      number_to_remove = @takeaway_options[@user_choice]
      return number_to_remove
    else
      !@takeaway_options.include?(@user_choice)
      puts "Please choose between 1 and 3 sticks."
      return
    end
  end

  def remove_sticks(number_to_remove)
    @starting_sticks = @starting_sticks - number_to_remove
  end


end
# def sticks_taken(#always 1 2 or 3 make the hash, key string, value integer)
#   @starting_sticks.reduce { |total, #guesshash| total - #guesshash.specific index integer }
# end
