class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id]) # find a certain post
  end

  def edit
    @post = Post.find(params[:id]) # edit a certain post
  end

  def update
    @post = Post.find(params[:id]) # find a certain post

    if @post.update(post_params) # update the params, like `title`, `category` and `content`
      redirect_to post_path(@post) # show the certain post
    else 
      render :edit # edit the post
    end 
  end

  private

  def post_params
    params.permit(:title, :category, :content)
  end
end
