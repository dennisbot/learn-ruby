class Miclase 
  def initialize args
    "estos son los args = #{args}"
  end
  def hola
    puts "hola!"  
  end
end

mc = Miclase.new a: "letra a", b: "letra b"
mc.hola
