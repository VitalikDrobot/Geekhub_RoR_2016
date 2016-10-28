class Post

	def creat_new_post(new_post)
		@new_post = new_post
		@text_of_post.push @new_post
	end

	def edit_last_post(new_post)
		@text_of_post.pop
		@text_of_post.push new_post
	end

	def delete_last_post
		@text_of_post.pop
	end

	def delete_all_posts
		@text_of_post.clear
	end

	def write_all_posts
		puts "#{@user_name} posted"
		@text_of_post.each {|post| puts post}
		post?
	end	

	private

	def post?
		if @text_of_post == []
			puts "No post"
		end	
	end

end	