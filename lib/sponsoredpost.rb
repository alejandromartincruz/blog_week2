require_relative "post.rb"

class SponsoredPost < Post
	def make_sponsored
		@sponsored = true
	end
end