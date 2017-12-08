class OrangeTree

  def initialize
    @age = 0
    @height = 0
    @orange_fruits = 0
    @age_of_decease = 20.0 + rand(10)
  end
  
  def height
    @height
  end
  
  def passed365days
    if @age + 1 > @age_of_decease
      return
    end
    @age += 1
    @height = ('%.2f' % (@height + rand() * 3).to_s).to_f
    @orange_fruits = @age <= 6 ? 0 : ((@age - (@age_of_decease / 2.0).to_i ) ** 2) * (-1) + 100
  end

  def age
    @age
  end

  def dead?
    @age >= @age_of_decease
  end

  def ageOfDecease
    @age_of_decease
  end

  def numOfFruits
    @orange_fruits
  end

  def takeAorange
    if @orange_fruits > 0
      @orange_fruits -= 1
    end
  end

  def to_s
    "I'm a tree and I'm #{@age} years old"
  end

end

puts 3 + 1.7

cad = "esto es una cadena con #{'"sorpresa"'} en el cual podemos poner operaciones como 2 + 1 = #{2 + 1}"
puts cad

mytree = OrangeTree.new 

puts "my tree will live for #{mytree.ageOfDecease.to_i} years"

loop do

puts "ha#{mytree.age == 1 ? "" : "n"} pasado #{mytree.age} año#{mytree.age == 1 ? "" : "s"} y el size del arbol es : #{mytree.height}"

if mytree.numOfFruits > 0
  puts "mi árbol ha producido este año #{mytree.numOfFruits} naranjas! :')"
else
  if mytree.age > 6 
    puts "mi árbol ya no da frutos! :'("
  else
    puts "mi árbol aún no ha dado frutos :'("
  end
end

if rand(3) > 1
  if mytree.numOfFruits > 0
    mytree.takeAorange
    puts "dado que me antojé una naranja, tomé una! :D jum jum!"
  else
    puts "me antojé una naranja, pero me dí cuenta que ya no había :("
  end
end

if mytree.dead?
  puts "my tree's reached its end, now it's dead, we will be leaving the app"
  exit
end
# pasar un año
mytree.passed365days
puts "continuar un año más? (y/n)"

if gets.chomp.to_s != "y" then break end

end