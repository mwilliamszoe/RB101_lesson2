def find_greatest(numbers)
  saved_number = nil

  numbers.each do |num|
    saved_number ||=num
    if saved_number >= num
      next
    else
      saved_number = num
    end
  end

  saved_number
end

# START 	start of the program
# SET 	sets a variable we can use for later
# GET 	retrieve input from user
# PRINT 	displays output to user
# READ 	retrieve value from variable
# IF / ELSE IF / ELSE 	show conditional branches in logic
# WHILE 	show looping logic
# END 	end of the program


# 1)
# define method that takes two integers
# add integers
# return added value

#START
#PRINT first integer + second integer

#2)
# define method that takes array of strings
# call .join on the array
# save value of joined array
# return that value

#START
#PRINT array.join


#3)
#iterate over the array
#print out every other value

#START
#iterare over the array
# IF iterator is odd
  #PRINT value of iterator
#ELSE
 # do nothing
#END

