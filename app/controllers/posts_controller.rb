class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(secure_params)

    if @post.save
      redirect_to post_path(@post.id)
    else
      redirect_to new_post_path
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(secure_params)
      redirect_to post_path(@post.id)
    else
      redirect_to post_path(@post.id)
    end
  end

  def destroy
  end

  private
  def secure_params
    params.require(:post).permit(:title, :link, :points, :id)
  end
end
