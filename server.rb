require "sinatra"
require "sinatra/reloader"
require "pry"

require_relative "./lib/blog.rb"
require_relative "./lib/post.rb"

enable :sessions
blog = Blog.new

get "/"  do
	@posts = blog.posts
	erb(:home)	
end

post "/submit_post" do
	blog.add_post(Post.new(params[:title],params[:content]))
	redirect "/"
end

post "/submit_sponsored_post" do
	post = SponsoredPost.new(params[:title],params[:content])
	post.make_sponsored
	blog.add_sponsored_post(post)
	redirect "/"
end