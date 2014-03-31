
#Given a string that contains words separated by spaces, write a 
#function that reverses the order of the words

def reverse(str)
  return str.split.reverse.join(" ")
end

puts reverse("I love hamburgers")



#Write a function that takes a 
#string argument and checks 
#if every character in the string is unique.

def unique(str)
  str_array = str.split(//)
  no_doubles = str_array.uniq
  if str_array == str_array.uniq
    return true
  else
    return false
  end
end

puts unique("hello")
puts unique("cat")

#returns first non-repeating letter of a string

def non_repeat(str)
  str_array = str.split(//)
  i = 0
  while i < str_array.length
    freq = str_array.count((str_array[i]))
      if freq == 1
        return str_array[i]
      end
      i += 1
  end
  puts "No repeating characters"
end

puts non_repeat("aaa")
puts non_repeat("dog")

    