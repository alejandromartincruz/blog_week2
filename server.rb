require "sinatra"
require "sinatra/reloader"
require "pry"

require_relative "./lib/blog.rb"
require_relative "./lib/post.rb"


get "/"  do
	"Hello world"	
end