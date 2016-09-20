require_relative 'sticks_game'

def main
  puts "How many sticks would you like to play with? (10-100)"
  user_total_sticks = gets.chomp.to_i
  game = SticksGame.new(user_total_sticks)
  puts game
  number_to_remove = 0
  player1_removal = 0
  player2_removal = 0
  player1_all = ""
  player2_all = ""

  until game.starting_sticks == 0



    while !(1..3).include? player1_removal
      puts "How many sticks would player 1 like to remove: "
      player1_removal = gets.chomp

      player1_removal = game.sticks_to_take(player1_removal)

      if !(1..3).include? player1_removal.to_i
        puts "Can't do that sucka. Pick 1-3"
      end
    end
    player1_all << player1_removal
    on_table_sticks = game.remove_sticks(player1_removal)

    puts "Hmmm... #{on_table_sticks} left..."

    if on_table_sticks <= 0
      break
    end


    while !(1..3).include? player2_removal.to_i
      puts "How many sticks would player 2 like to remove: "
      player2_removal = gets.chomp

      player2_removal = game.sticks_to_take(player2_removal)

      if !(1..3).include? player2_removal.to_i
        puts "Can't do that sucka. Pick 1-3"
      end
    end
    player2_all << player2_removal
    on_table_sticks = game.remove_sticks(player2_removal)

      puts "Hmmm... #{on_table_sticks} left..."

    if on_table_sticks <= 0
      break
    end

  end
end


if __FILE__ == $PROGRAM_NAME
  main
end
