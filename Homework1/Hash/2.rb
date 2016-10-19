hsh = {'yes' => 23, 'b' => 'travel', 'yesterday' => 34, :yesss => :fg, try: 30, key: 'some value', 'yesterday1'=> 34, 'yesteryear' => 2014}
k=0
hsh.each_key do |key|  
	puts key.to_s
	if key.to_s.slice(0..2) == "yes"
		k+=1
	end
end
puts k