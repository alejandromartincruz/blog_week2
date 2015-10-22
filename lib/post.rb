class Post
	attr_accessor :title, :content
	attr_reader :date, :id
	@@current_id = 1

	def initialize (title, content)
		@title = title
		@content = content
		@date = Time.now
		@id = @@current_id
        @@current_id += 1
	end

end

class SponsoredPost <Post


end
