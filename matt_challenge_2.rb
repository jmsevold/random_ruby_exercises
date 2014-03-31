#given a str, return the char that appears the most

def freq_char(str)
  str_array = str.split(//)
  str_hash = Hash.new
  for char in str_array
    str_hash[char] = str_array.count(char)
  end
  if str_hash.all? { |k,v| v == 1}
    puts "All characters appear once."
  else
    max_char = str_hash.max_by{|k,v| v}
    puts max_char[0]
  end 
end



freq_char('doog')
freq_char('fffffffrog')
freq_char('frog')



def fizzerator
  for x in (1..100)
    if x % 3 == 0
      puts "Fizz"
    
    elsif x % 5 == 0
      puts "Buzz"
      
    elsif (x % 3 == 0) && (x % 5 == 0)
      puts "FizzBuzz"
    
    else
      puts x
    
    end
  end
end

fizzerator
   
   
 







