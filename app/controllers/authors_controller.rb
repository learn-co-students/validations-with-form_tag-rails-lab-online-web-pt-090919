class AuthorsController < ApplicationController

  def new
    @author = Author.new
  end

  def index
    @authors = Author.all
  end

  def show
    @author = author_find
  end

  def create
    @author = Author.new(author_params)

    if @author.valid?
      @author.save
      redirect_to author_path(@author)
    else
      render :new
    end
  end

  def edit
    @author = author_find
  end

  private

  def author_params
    params.permit(:name, :email, :phone_number)
  end

  def author_find
    Author.find_by(params[:id])
  end
  
  def author_find
    Author.find_by(params[:id])
  end

  
end
