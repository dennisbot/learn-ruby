toast = Proc.new do
  puts "¡Aplausos!"
end

toast.call
toast.call
toast.call


def method miproc
  puts "dentro de method!"
  miproc.call
end


method toast


tegusta = proc {|algoRico, size|
  puts "realmente me gusta " + algoRico + " del tamaño " + size
}

tegusta.call "Ceviche", "medium"
tegusta.call "Lomo saltado", "big"
tegusta.call "Estofado de pollo", "small"
tegusta.call "Arroz con pollo", "bit"

p [1,2,3].map{|k|  k+1}
p lambda { return :foo }.call # => :foo
p return # => LocalJumpError: unexpected return
p Proc.new { return :foo }.call