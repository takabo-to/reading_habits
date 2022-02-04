class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def index
    @posts = Post.all.order(id: "DESC")
  end
  def new
    @post = Post.new
  end
  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      redirect_to post_path(@post)
    else
      render :new
    end
  end
  
  def show
    @post = Post.find(params[:id])
  end
  def edit
    @post = Post.find(params[:id])
    if @recipe.user != current_user
        redirect_to recipes_path
    end
  end
  def update
    @post = Post.find(params[:id])
    if @recipe.update(recipe_params)
      redirect_to post_path(@post)
    else
      render :edit
    end
  end
  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to user_path(post.user)
  end

  private
  def post_params
    params.require(:post).permit(:title, :content, :image)
  end
  

  
end
