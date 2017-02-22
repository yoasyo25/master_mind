# Game Time

# When the player chooses the (p)lay option, the game time should start.
  # The beginning and end of the game time can be captured through a method
  # that subtracts the start_time from the end_time.
  #Time.now => 2017-02-21 13:52:18 -0700
  #need to convert this into just mins and seconds
  #one option would be to use strftime %M:%S

    # start_time = Time.now.strftime("%M:%S") => outputs in string format => "01:45"
    #would it make sense to attach .to_f?
    #start_time = Time.now.strftime("%M:%S").to_f
    #or would it be better to do Time.now.to_f?
    # end_time = Time.now.strftime("%M:%S").to_f

    #elapsed time = end_time - start_time

    #e.g. this does not work because the 0 is not being changed

    # class GameTime
    #
    #   def initialize
    #     @start_time = 0
    #     @end_time = 0
    #   end
    #
    #   def start_time
    #     @start_time = Time.now.strftime("%M:%S").to_f
    #   end
    #
    #   def end_time
    #     @end_time = Time.now.strftime("%M:%S").to_f
    #   end
    #
    #   def elapsed_time
    #     @end_time - @start_time
    #   end
    #
    # end

    #end

# comparison of guess and secret_code
# separate each element of guess in a way it has an index number
# e.g guess.chars
# shuffled_elements have an index number so we would need to compare the index
# numbers and positions of the different idexes to do the comparison 

  #a.chars.each_with_index { |x| puts x }
  #comparison would use the index of the two arrays to assess if the number of
  # guesses that are in the correct position.

# number of guesses
# set number_of_guesses as zero when the game starts
# def initialize
# @number_of_guesses = 0
# end
# then when the game starts out the counter to @number_of_guesses += 1


# randomize secret_code in a manner where the value does not change within one play
# secret_code has four elements and should be in an array so that it is easier
# to manipulate

  #@secret_code = %w[r b y g]

  #create a method to shuffle

  #def shuffle_elements
    # @secret_code.shuffle
    #end

  # this method will shuffle the elements each time it is called. Hence, putting
  # the shuffled elements in the initialize method will make it so that the
  # elements are only shuffled once when the game starts
      # hence @shuffled = shuffle_elements
      #then when we compare @shuffled with the guess (which is a string) we
      # can call the .join method to turn @shuffled.join into a string
