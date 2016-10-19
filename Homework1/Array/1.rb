a = [1, 2, 33, 4, 5, 6, 7, 8, 9, 10]
a.each {|x| puts x}
puts "///////////////////////////"
a.each {|x|
  if x>5
    puts x
  end
}
puts "/////////////////"
b = [
a.each do |x|
  if x.odd?
    puts x
    b << x
  end
end
puts "Масив не парних"
puts b
puts "//////////////"
a.unshift(3)
a << 11
puts a
