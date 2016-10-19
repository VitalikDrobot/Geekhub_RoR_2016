array = []
40.times do
	day = rand(1..31)
	month = rand(1..12)
	temperature = rand(-20..35)
	str = day.to_s+'.'+month.to_s+' '+temperature.to_s
	array << str
end
puts array