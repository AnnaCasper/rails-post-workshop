class PostsController < ApplicationController

  def index
    @post = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      p '*'*80
      redirect_to :index
    else
      render :new
  end

  private

  def post_params
    params.require(:post).permit(:title, :author, :body)
  end

end

end
