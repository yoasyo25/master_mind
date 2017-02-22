require './end_game'
require 'pry'

class StartGame

  attr_reader :colors, :shuffled, :number_of_guesses

  def initialize
    @colors = ["r", "b", "y", "g"]
    @shuffled = shuffle_elements
    @number_of_guesses = 0
    @start_of_game = Time.now
    @end_of_game = nil
  end

  def shuffle_elements
    @colors.shuffle
  end

  def play

    puts """
    I have generated a beginner sequence with four elements made up of:
    (r)ed, (g)reen, (b)lue, and (y)ellow.
    Use (q) at any time to end the game.
    What's your guess?
    """
    game_repeat = false



    while true
      print "> "
      guess = gets.chomp.downcase
      @number_of_guesses += 1

      if guess == "q" || guess == "quit"
        puts "Goodbye!"
        exit
      elsif guess == ("c") || guess == ("cheat")
        puts "The secret code is #{@shuffled.join}"
        play
      elsif guess.length < 4
        puts "Your guess is too short. Please input another guess"
        game_repeat
      elsif guess.length > 4
        puts "Your guess is too long. Please input another guess"
        game_repeat
      elsif guess == @shuffled.join
        winner = EndGame.new(self)
        winner.final_phase
      elsif guess != @shuffled.join
        compare_guesses(guess)
        game_repeat
      end
    end
  end

    def compare_guesses(guess)
      matches = (guess.chars & @shuffled).count
      correct_positions = 0
      guess.chars.each.with_index do |color, index|
        if @shuffled[index] == color
          correct_positions += 1
        end
        puts "You have '#{matches}' of the correct elements with #{correct_positions} in correct position(s)."
        puts "You've taken #{@number_of_guesses}"
    end


  def time_lapsed
    @start_of_game - Time.now
  end

end
