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

   def delete
     @posts = Posts.find(params[:id])
    end

  end
