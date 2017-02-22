class EndGame

  def initialize(game)
    @game = game
  end

  def final_phase
      puts """
      Congratulations! You guessed the secret code of '#{@game.shuffled.join}'q in #{@game.number_of_guesses} guesses over
      #{@game.time_lapsed} seconds.

      Do you want to (p)lay again or (q)uit?
      """
      game_on = false

      while true
        print "> "

        user_input = gets.chomp.downcase

        if user_input == "p" || user_input == "play"
          play_again = StartGame.new
          play_again.play
        elsif user_input == "q" || user_input == "quit"
          puts "Goodbye! Thank you for playing."
          exit
        else
          puts "I'm not sure what you mean. Please try again."
          game_on
        end
      end
  end
end
