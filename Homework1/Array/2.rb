@array = []
@array[0] = []
@array[1] = []
@array[2] = []
@array[3] = []
def randomize_out mas 
	4.times do
		variable = rand(-10..10)
		mas << variable
	end	
end
def showArray
	puts @array
end
randomize_out @array[0]
randomize_out @array[1]
randomize_out @array[2]
randomize_out @array[3]
showArray


