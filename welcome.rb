require './instructions'
require './start_game'

class Welcome

  def start
    puts "Welcome to MasterMind\n\n"
    puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
    print "> "
    user_input = gets.chomp.downcase

    if user_input == "p" || user_input == "play"
      play = StartGame.new
      play.play
    elsif user_input == "i" || user_input == "instruction"
      i = Instructions.new
      i.player_instructions
      start
    elsif user_input == "q" || user_input == "quit"
      puts "Goodbye!"
      exit
    else
      exit
    end
  end

end
