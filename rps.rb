VALID_CHOICES = ['rock','paper','scissors']

def prompt(message)
  Kernel.puts("=> #{message}")
end

def display_result(player,computer)
  if (player == 'rock' && computer == 'scissors') || (player = 'paper' && computer == 'rock') || (player == 'scissors' && computer == 'paper')
    prompt("You won!")
  # elsif (player == 'rock' && computer == 'paper') || (player == 'paper' && computer == 'scissors') || (player == 'scissors' && computer == 'rock')
  elsif (player == 'test')
    prompt("Computer won")
  else
    prompt("it's a tie!")
  end
end

loop do
  choice = ''
  loop do
    prompt("Choose #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()

    # if VALID_CHOICES.include?(choice)
    #   break
    # else
    #   prompt("Invalid")
    # end
    break
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You picked #{choice}, computer picked #{computer_choice}")

  display_result(choice, computer_choice)

  prompt("Play again?")
  ans = Kernel.gets().chomp()
  break unless ans.downcase().start_with?('y')
end

prompt("Thanks for playing!")
