require "pry"
require_relative "post.rb"

class Blog
	attr_reader :posts

	def initialize
		@posts = []
	end

	def add_post(title, content)
		@posts << Post.new(title, content)
	end

	def order_posts
		@posts.sort! { |post1, post2| post2.date <=> post1.date }
	end

	def find_post_by_id(id_number)
		@posts.find do |post|
			post.id == id_number
		end
	end

	def delete_post(id_number)
		@posts.delete_if {|post| post.id == id_number}
	end

	def number_of_post
		@posts.length
	end

end