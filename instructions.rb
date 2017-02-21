class Instructions

  def player_instructions
    puts """
    I have selected a secret sequence of four elements made up of:
    (r)ed, (g)reen, (b)lue, and (y)ellow.

    In order to win, you must get the correct sequence of the four elements
    in 10 or fewer guesses.

    To input your guess, type the first letters of the four elements.
    e.g. rgby or RGBY.

    Each time you submit a guess, I will let know how close you are to the correct sequence.

    You can get the secret sequence by typing 'c' or 'cheat'. Try not to use this too much!

    You win that round when you guess the correct sequence.

    Upon your win, have the option of playing another round or exiting the game.

    You can quit the game by typing 'q' or 'quit' at anytime.

    HAVE FUN!
    """
  end

end
