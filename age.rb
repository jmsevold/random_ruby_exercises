puts "Enter the age:" 
age = gets.chomp.to_i

if age >= 0 && age <= 2
  puts "baby"

elsif age >= 3 && age <= 6
  puts "little child"

elsif age >= 7 && age <= 12
  puts "child"

elsif age >= 13 && age <= 18
  puts "youth"

else
  puts "adult"
end