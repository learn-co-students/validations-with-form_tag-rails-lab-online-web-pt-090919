class PostsController < ApplicationController
  def show
    set_post
  end

  def new
    @post = Post.new(post_params)
  end

  def create
    @post = Post.new(post_params)

    if @post.valid?
      @post.save
      redirect_to post_path(@post)
    else
      #hold on to @post, because it is now full of
      # useful error messages, and re-render the :new page, which knows how
      # to display them alongside the user's entries.
      render :new
    end
  end

  def edit
    set_post
  end

  def update
    set_post
    @post.attributes = post_params
    
    if @post.valid?
      @post.save
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  private
  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.permit(:title, :category, :content)
  end
end
