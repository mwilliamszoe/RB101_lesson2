#1
# when the variable a changes so does the object id but when the variable is reassigned the object id of that newly assigned variable stays the same as the old one

#2 
#unlike before a_outer did not end up gettting reassigned

#3
#I think my_string will end up as "retabagapumpkins" and my_array will be ["pumpkins", "rutabaga"]

#4
#I think the results will be the same as in question 3

#5
def not_so_tricky_method(str, arr)
  str + "rutabaga"
  arr.push("rutabaga")
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

#6
def color_valid(color)
  color == "blue" || color == "green" ? true : false
end