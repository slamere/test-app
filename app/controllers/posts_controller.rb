class PostsController < ApplicationController

  require 'dynamic_form'

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(params[:post])

   if @post.save
     flash[:notice] = 'Post was successfully created.'
     redirect_to post_path(@post)
   else
     flash[:notice] = 'Post could NOT be created'
     render :action => 'new'
   end
  end

  def update
    @post = Post.find(params[:id])

   if @post.update_attributes(params[:post])
     flash[:notice] = 'Post was successfully updated.'
     redirect_to post_path(@post)
   else
     flash[:notice] = 'Post could NOT be updated'
     render :action => 'edit'
   end
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.destroy
      flash[:notice] = "Post was successfully removed"
    else
      flash[:error]  = "Post could not be deleted"
    end
  end

end
