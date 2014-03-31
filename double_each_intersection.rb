# find numbers in both arrays
a = [1, 2, 3, 4]
b = [3, 4, 5, 6]

def ampersand (first, second)
  a.each do |n|
    b.each do |m|
      if n == m
        puts "#{n}"
      end
    end
  end
end