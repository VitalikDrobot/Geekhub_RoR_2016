require_relative "post"
require_relative "like"
class User < Post
	attr_accessor :user_name, :text_of_post
	def initialize(options)
		@user_name = options[:user_name]
		@text_of_post = options[:text_of_post]
	end
end
first_user = {:user_name => "Vitalik", :text_of_post => ["It\'s my first post", "2", "3"]}
second_user = {:user_name => "Jonh", :text_of_post => ["s,dnvdslv", "sdgsg", "sifuwdg sef"]}
new_user = User.new(first_user)
new_user2 = User.new(second_user)
new_user2.write_all_posts
new_user.write_all_posts

