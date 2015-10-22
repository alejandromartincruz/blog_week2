require "rspec"

require_relative "../lib/blog.rb"

RSpec.describe "Blog" do

	let(:blog) {Blog.new}

	it "should add a new post in the array of posts" do
		blog.add_post("Title 1", "The bizarre content")
		expect(blog.posts.length).to eq(1)
	end

end