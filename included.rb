require 'active_support/concern'
module A
  extend ActiveSupport::Concern
  def saludar
    puts "hola mundo!"
  end

  included do
    # puts "#{self} included in #{mod}"
      puts "hola desde included"
  end
end

class Person
  include A
end

p = Person.new
p.saludar
