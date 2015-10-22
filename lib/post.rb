class Post
	attr_accessor :title, :content, :current_id
	attr_reader :date, :sponsored, :id
	@@current_id = 1

	def initialize (title, content)
		@title = title
		@content = content
		@date = Time.now
		@id = @@current_id
        @@current_id += 1
        @sponsored= false
	end

end