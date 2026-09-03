class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post, notice: '作成しました。'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :start_date, :end_date, :all_day)
  end
end
