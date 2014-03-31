input = ""
until input == "frog"
  print "Enter password: "
  input = gets.chomp
  if input != "frog"
    puts "Wrong password."
  else
    puts "access granted"
  end
end

#While i <= 10 is the same as until i > 10


input = ""

loop do
  print "Enter password: "
  input = gets.chomp
  if input == "toad"
    puts "access granted!"
    break
  end
end


array =['a','b','c','d']

