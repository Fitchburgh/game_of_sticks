require_relative 'sticks_game'

def main
  puts "How many sticks would you like to play with? (10-100)"
  user_total_sticks = gets.chomp.to_i
  game = SticksGame.new(user_total_sticks)
  puts game
  on_table_sticks = 0



  until game.starting_sticks <= 0
    player1_removal = 0
    player2_removal = 0

      while !(1..3).include? player1_removal
        print "How many sticks would player 1 like to remove: "
        player1_removal = gets.chomp.to_i

        if !(1..3).include? player1_removal.to_i
          puts "Can't do that sucka. Pick 1-3"
        end
      end
      on_table_sticks = game.remove_sticks(player1_removal)
      puts "#{on_table_sticks} sticks left on the table."

      if on_table_sticks <= 0
        break
      end

      while !(1..3).include? player2_removal.to_i
        print "How many sticks would player 2 like to remove: "
        player2_removal = gets.chomp.to_i

        if !(1..3).include? player2_removal.to_i
          puts "Can't do that sucka. Pick 1-3"
        end
      end
      on_table_sticks = game.remove_sticks(player2_removal)
      puts "#{on_table_sticks} sticks left on the table."


  end
end


if __FILE__ == $PROGRAM_NAME
  main
end
