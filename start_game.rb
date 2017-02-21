require './end_game'
require 'pry'

class StartGame

  attr_reader :colors, :shuffled, :number_of_guesses

  def initialize
    @colors = ["r", "b", "y", "g"]
    @shuffled = shuffled
    @number_of_guesses = 0
    @start_of_game = Time.now.to_i
  end

  def shuffle_elements
    shuffle = @colors.shuffle
  end

  def play

    puts """
    I have generated a beginner sequence with four elements made up of:
    (r)ed, (g)reen, (b)lue, and (y)ellow.
    Use (q) at any time to end the game.
    What's your guess?
    """
    game_repeat = false

    @start_of_game

    while true
      print "> "
      guess = gets.chomp.downcase
      @number_of_guesses += 1
      guess_array = guess.split("")

      if guess == "q" || guess == "quit"
        puts "Goodbye!"
        exit
      elsif guess == ("c") || guess == ("cheat")
        puts "The secret code is #{shuffle_elements.join}"
        play
      elsif guess.length < 4
        puts "Your guess is too short. Please input another guess"
        game_repeat
      elsif guess.length > 4
        puts "Your guess is too long. Please input another guess"
        game_repeat
      elsif guess_array == shuffle_elements
        winner_next_move = EndGame.new
        winner_next_move.final_phase
      elsif guess != shuffle_elements
        compare_guesses(guess)
      end
    end
  end

    def compare_guesses(guess)
      matches = (guess.chars & shuffle_elements).count
      correct_positions = 0
      guess.chars.each.with_index do |color, index|
          if shuffle_elements[index] == color
            correct_positions += 1
          end
        end
          puts "You have #{matches} correct elements with #{correct_positions} in correct positions"
    end


  def time_lapsed
    @start_of_game.to_i - Time.now.to_i
  end

end
