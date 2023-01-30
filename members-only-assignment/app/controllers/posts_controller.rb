class PostsController < ApplicationController
  before_action :set_post, only: [:show]
  before_action :authenticate_user!, except: [:index, :show]

  public
  def create
    # code here
    @post = current_user.posts.build(post_params)

    if @post.save
      redirect_to root_path, notice: "The post was successfully created..!"
    else
      @posts = Post.all
      flash[:alert] = @post.errors.count
      render :index, alert: 'Post was not created..!'
    end
  end

  def index
    @posts = Post.all.order("created_at DESC ")
    @post = Post.new
    @users = User.all
  end

  def show
    @posts = Post.all.order("created_at DESC")
    @members = User.all
  end

  public
  def new
    # code here
    @post = current_user.posts.build
  end

  private
  def post_params
    params.require(:post).permit(:title, :body)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
