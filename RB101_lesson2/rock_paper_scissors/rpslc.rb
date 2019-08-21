VALID_CHOICES = %w(rock paper scissors lizard spock)
player_score = 0
computer_score = 0

def prompt(message)
  Kernel.puts("=> #{message}")
end

def abbreviation_to_choice(letter)
  case letter
  when 'a'
    'paper'
  when 'r'
    'rock'
  when 'x'
    'scissors'
  when 'k'
    'spock'
  when 'z'
    'lizard'
  end
end

  abbreviated_choice = <<-MSG
Choose one by letter:
  a) paper
  r) rock
  x) scissors
  k) spock
  z) lizard
  MSG

# def win?(first, second)
#   (first == 'paper' && second == 'rock')||
#   (first == 'rock' && second == 'scissors')||
#   (first == 'scissors' && second == 'paper')
#   (first == 'rock' && second == 'lizard')
#   (first == 'scissors' && second == 'lizard') ||
#   (first == 'lizard' && second == 'paper') ||
#   (first == 'lizard' && second == 'spock') ||
#   (first == 'spock' && second == 'scissors') ||
#   (first == 'spock' && second == 'rock') ||
#   (first == 'paper' && second == 'spock')
# end

def keep_score(player, computer)
  if win?(player, computer)
    player_core += 1
  elsif win?(computer, player)
    computer_score += 1
  else
    nil
  end
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

prompt("Five rounds to win!")

5.times do
  choice = ''
  loop do
    prompt("#{abbreviated_choice}")
    choice = Kernel.gets().chomp()
    if choice.start_with?('a','r','x','k','z')
      break
    else
      prompt("Invalid")
    end
    break
  end
  computer_choice = VALID_CHOICES.sample

  prompt("You picked #{abbreviation_to_choice(choice)}, computer picked #{computer_choice}")

  # display_result(choice, computer_choice)
  display_result(abbreviation_to_choice(choice), computer_choice)
  
  prompt("You: #{player_score}")
  prompt("Computer: #{computer_score}")

  # prompt("Play again?")
  # ans = Kernel.gets().chomp()
  # break unless ans.downcase().start_with?('y')
end

prompt("Thanks for playing!")
