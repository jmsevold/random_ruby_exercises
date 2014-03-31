def palindrome_checker(str)
  split_str = str.split(//)
  puts "split_str is #{split_str.inspect}"
  reverse = []
  i = 0
  while i <= (split_str.length + 1)
    reverse << split_str.pop
    i += 1
  end
  puts "reverse is #{reverse.inspect}"
  puts "split_str is #{split_str.inspect}"
  puts "str.split(//) is #{str.split(//)}"
  if reverse.join == str.split(//).join
    true
  else
    false
  end
end

palindrome_checker("bob")   
palindrome_checker("garbage")
    
    