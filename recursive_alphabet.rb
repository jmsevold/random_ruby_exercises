def recursive_alphabet_builder(letter)
  puts letter
  if letter == "z"
    puts "There's nothing after 'z'!"
    return 
  else
    puts recursive_alphabet_builder(letter.next)
  end
end