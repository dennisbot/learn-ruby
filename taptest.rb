require 'pry'

class Clase
  attr_accessor :foo, :bar

  def initialize params
    self.foo = params[:foo]
    self.bar = params[:bar]
  end
  
end


c = Clase.new foo: "mi foo", bar: "mi bar"

c.tap do |clase|
  binding.pry
end
puts "foo = #{c.foo}"
puts "bar = #{c.bar}"