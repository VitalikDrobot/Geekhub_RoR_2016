class Like
@like = 0
	def creat_like
		@like +=  1 
	end
	def delete_like
		@like -= 1
	end
	def out_like
		puts "User liked  #{@like}" 
	end
end	
bla = Like.new
bla.creat_like
bla.out_like