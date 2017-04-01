class Account::PostsController < ApplicationController
  before_action :authenticate_user!
    def index
      @posts = current_user.posts
    end

  def show
    @posts = Posts.find(params[:id])

    def edit
      @posts = Posts.find(params[:id])
   end

   def destroy
     @posts = Posts.find(params[:id])
     @posts.destroy
     flash[:alert] = "Post deleted"
     redirect_to posts_path
   end

    end


  end
