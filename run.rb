require_relative 'sticks_game'

def main
  puts "How many sticks would you like to play with? (10-100)"
  user_total_sticks = gets.chomp.to_i
  game = SticksGame.new(user_total_sticks)
  puts game
  number_to_remove = 0

  until game.starting_sticks == 0
    to_remove = ""
    puts "How many sticks would player 1 like to remove: "
    to_remove = gets.chomp
    number_to_remove = game.sticks_taken(to_remove)
    on_table_sticks = game.remove_sticks(number_to_remove)
    puts on_table_sticks


    puts "How many sticks would player 2 like to remove: "
    to_remove = gets.chomp
    number_to_remove = game.sticks_taken(to_remove)
    on_table_sticks = game.remove_sticks(number_to_remove)
    puts on_table_sticks

      # puts "How many sticks would player 2 like to remove: "
      # to_remove = gets.chomp
      # game1.sticks_taken(to_remove)
      # number_to_remove.remove_sticks(to_remove)







  end





end


if __FILE__ == $PROGRAM_NAME
  main
end
