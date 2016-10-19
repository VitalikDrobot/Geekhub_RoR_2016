array_key= ("a".."z").to_a
array_values = (1..array_key.length).to_a
array_values = (array_key.length-2).times.each_with_object([1,1]) { |num, obj| obj << obj[-2] + obj[-1] }
global_array = []
global_array << array_key
global_array << array_values
hsh = Hash[*global_array.transpose.flatten]
puts hsh
puts "////////////////////"
hsh.each do |k,v|
	if v > 15 
		puts  "#{k} => #{v}"
	end	
end