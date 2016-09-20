class InvalidStartingSticks < StandardError
end

class SticksGame
  attr_accessor :starting_sticks

  def initialize(starting_sticks)
    @takeaway_options = {
      "1" => 1,
      "2" => 2,
      "3" => 3
    }
    @starting_sticks = starting_sticks

    if !(10..100).include? starting_sticks
      raise InvalidStartingSticks, "Please choose between 10 and 100 sticks to start with."
    end
  end

  def sticks_to_take(user_choice)
    @user_choice = user_choice
    if @takeaway_options.has_key?(@user_choice)
      number_to_remove = @takeaway_options[@user_choice]
      return number_to_remove
    # else
    #   # !@takeaway_options.include?(@user_choice)
    #   # puts "Please choose between 1 and 3 sticks."
    #   # return

    end
  end

  def remove_sticks(number_to_remove)
    number_to_remove = number_to_remove.to_i
    @starting_sticks = @starting_sticks - number_to_remove
  end
end
