class PostsController < ApplicationController
  def show
    @post = post_find
  end

  def edit
    @post = post_find
  end

  def update
    @post = post_find

    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  private

  def post_params
    params.permit(:title, :category, :content)
  end

  def post_find
    Post.find_by(params[:id])
  end
end
