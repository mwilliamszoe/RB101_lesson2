VALID_CHOICES = %w(rock paper scissors)

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') || (first = 'paper' && second == 'rock') || (first == 'scissors' && second == 'paper')
end

def display_result(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
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
    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("Invalid")
    end
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
