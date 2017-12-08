# Your code here
def prime? num
  if num <= 1
    return false
  end
  2.upto(Math.sqrt(num)) do |i|
    if num % i == 0 
      return false
    end
  end
  return true
end

5.times do |index|
  puts "prime?(#{index}) = #{prime? index}"
end


test_array = ['Give Quich A Chance',
            'Mutants Out!',
            'Chameloeonic Life-Forms, No Thanks']

# Here's half of the magic:
require 'yaml'
test_string = test_array.to_yaml

puts test_string

arr = []
5.times do |i|
  arr << i
end

print arr, "\n"

txt = ""
5.times do |i|
  txt << ((i != 0) ? ", " : "")  + i.to_s
end

puts txt

puts 1 << 3