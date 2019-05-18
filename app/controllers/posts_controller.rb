class PostsController < ApplicationController
  def index
    @posts = Post.all
    p "==================================="
    p @posts
    p "==================================="
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def new
  end

  def create
    @post = Post.new(content: params[:content])
    @post.save
    redirect_to("posts/index")
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end
end
