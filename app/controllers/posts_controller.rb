class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def show
		@post = find_element
	end

	def new
		@post = Post.new
	end

	def create
	  @post = Post.create(set_params)
	  redirect_to post_path(@post)
	end

	def edit
		@post = find_element
	end

	def update

		@post = find_element
		@post.update(set_params)

		redirect_to post_path(@post)

	end


	private

	def find_element
		@post = Post.find(params[:id])
	end

	def set_params
		params.permit(:title, :description)
	end


end
