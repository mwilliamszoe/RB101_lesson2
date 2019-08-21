m = nil
p = nil
j = nil
n = nil
correct = nil

def valid?(num)
  num.to_i() != 0
end

puts "Loan Calculator! Please input the following:"
loop do

  loop do
    puts "Your monthly payment"
    m = gets.to_i
    puts "Your loan amount"
    p = gets.to_i
    puts "Your monthly interest rate in decimal form"
    j = gets.to_f
    puts "Your loan duration in months"
    n = gets.to_i

    unless valid?(m) && valid?(p) && valid?(p) && valid?(n)
      puts "Sorry, something's not right"
      break
    end

    puts "Is this all correct? (yes, no)"
    puts "monthly payment: #{m}
loan amount: #{p}
interest rate: #{j}
loan in duration: #{n} months"
    correct = gets.chomp.downcase
    break if correct.start_with?('y')
  end
  break if correct.start_with?('y')
end

ans = m = p * (j / (1 - (1 + j)**(-n)))
ans_trunc = ans.truncate(2)
puts "Result: #{ans_trunc}"

## Not quite sure what the end calculation represents. The total interest rate?