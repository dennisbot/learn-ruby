require 'pry'

class Foo
  C1 = 100.freeze
  attr_accessor :alpha
  def initialize
    self.alpha = "Alfa"
  end

  def showConstants
    puts "C1 = #{C1}"
  end
end

f = Foo.new

# binding.pry

puts "Foo::C1 = #{Foo::C1}"
