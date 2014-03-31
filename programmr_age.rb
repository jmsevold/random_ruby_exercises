puts "Enter the age:" 
age = gets.chomp.to_i

case age

when (0..2)
  puts "baby"
when (3..6)
  puts "little child"
when(7..12)
  puts "child"
when (13..18)
  puts "youth"
else
  puts "adult"
end











#puts "Enter the age:" 
#age = gets.chomp.to_i

#if age >= 0 && age <= 2
  #puts "baby"

#elsif age >= 3 && age <= 6
  #puts "little child"

#elsif age >= 7 && age <= 12
  # "child"

#elsif age >= 13 && age <= 18
  #puts "youth"

#else
  #puts "adult"
#end