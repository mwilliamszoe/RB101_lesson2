# answer = gets
# puts answer


Kernel.puts("Welcome to Calculator")

Kernel.puts("What's the first number?")
number1 = Kernel.gets().chomp()

Kernel.puts("What's the second number?")
number2 = Kernel.gets().chomp()

Kernel.puts("What's the operator?) add 2) subtract 3) multiply 4) divide 5")
operator = Kernel.gets().chomp()

if operator == '1'
  result = number1.to_i() + number2.to_i()
elsif operator == '2'
  result = number1.to_i() - number2.to_i()
elsif operator == '2'
  result = number1.to_i() * number2.to_i()
else
  result = number1.to_f() / number2.to_f
end

Kernel.puts("The result is #{result}")