def longest_w_reduce(collection)
collection.reduce do |memo, word|
  if memo.length >  word.length
    longest_word = memo
  else
    longest_word = word
  end
  longest_word
end

# %w{ dog apple gopher pine}
def longest_w_each(words)
  longest_word = ""
  words.each do |word|
    if longest_word.length < word.length
      longest_word = word
    end
  end
  puts longest_word
end


def longest_w_for(words)
  longest_word = ""
  for word in words
     if longest_word.length < word.length
       longest_word = word
     end
  end
   puts longest_word 
end

def longest_w_while(words)
  longest_word = ""
  i = 0
  while i < words.length
    longest_word = words[i] if longest_word.length < words[i].length
    i += 1
  end
  puts longest_word 
end





#takes a first and last name, and removes the last name
def first_name(names)
  names.map do |word|
    word.split(" ")[0]
  end
end

