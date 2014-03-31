#this method prints each character with the corresponding
#to the user

def char_index(str)
  str.each_char {|char| puts "#{char} is at index #{str.index(char)}"}
end

puts char_index("doggy")

#custom count without use of .size, .length, or .count


def custom_count(array)
  counter = 0
  array.each do |elem|
    if elem != nil
      counter += 1
    end
  end
  counter
end

 puts custom_count([5,8,9,400])
 
 
 
 #write a function that 
 #tells me if a given number is divisible by 1 through 10
 
def is_divisble (num)
  array = []
  i = 1
  while i <= 10
    array << i
    i += 1
  end
  if array.all? { |x| num % x == 0}
    puts "this number qualifies."
  else
    puts "this number does not qualify"
  end
end

puts is_divisble(1)
  

a.reduce do |memo, word|
  if memo.length >  word.length
    longest_word = memo
  else
    longest_word = word
  end
  longest_word
end
    
 #"the quick brown fox" => "ethay ickquay ownbray oxfay"
def translate(string)
  vowels = %w{ a e i o u}
  consonants = ('a'..'z').to_a - vowels
  string = string.split
  string.each do |word|
    if vowels.include?(word[0])
      word + "ay"
    else
      #handle consonant-beginning words
      
      
 #consonants     
#word = word[1..-1] + word[0] + "ay"
  
    
  







