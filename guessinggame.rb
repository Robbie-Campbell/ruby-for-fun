def guessing_game(guess)
    options = ["rock", "paper", "scissors"]
    comp_choice = options.fetch(rand(3))
    if guess == comp_choice
        puts "Looks like a draw! You both chose %s!" % [guess]
    elsif (comp_choice == "rock" and guess == "paper") or (comp_choice == "paper" and guess == "scissors") or (comp_choice == "scissors" and guess == "rock")
        puts "Congratulations, You won!! %s beats %s" % [guess, comp_choice]
    else
        puts "Uh oh! looks like you lost, %s beats %s" % [comp_choice, guess]
    end
end

guessing_game("paper")