array = []
10.times do
	x = rand(-10..10)
	array << x
end
puts array
puts "//////negative/////"
sum = 0
array.each do |n|
	if n <0
		puts n
		sum += n
	end	
end
puts "sum negative"
puts sum