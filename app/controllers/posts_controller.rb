class PostsController < ApplicationController
  before_action :set_post!, only: [:show, :edit, :update]
  def show
    @post = Post.find(params[:id])
  end

  def edit
  end

  def update
    @post.assign_attributes(post_params)
    if @post.valid?
      @post.save
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  private

  def post_params
    params.permit(:title, :category, :content)
  end

  def set_post!
    @post = Post.find(params[:id])
  end
end
