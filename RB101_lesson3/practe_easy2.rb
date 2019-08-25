#1
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.has_key?("Spot")

#2
munsters_description = "The Munsters are creepy in a good way."

munsters_description.capitalize
munsters_description.downcase
munsters_description.upcase

# 3
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }

additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages.merge(additional_ages)

# 4
advice = "Few things in life are as important as house training your pet dinosaur."
advice.include?("Dino")

# 5
flinstones = [
"Fred", 
"Barney", 
"Wilma", 
"Betty", 
"BamBam", 
"Pebbles"
]

# 6
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flinstones << "Dino"

#7
flinstones.???

#8
advice[39..-1]
# it would destructively change the string

#9
statement = "The Flintstones Rock!"

statement.match('t')

# 10
title.strip