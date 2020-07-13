class AuthorsController < ApplicationController

  def index 
    @authors = Author.all 
  end 

  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    if @author.valid? # does this author have the right params?
      @author.save    # if so save this author
      redirect_to author_path(@author) # present the author
    else
      render :new # create a new author
    end
  end

  private

  def author_params
    params.permit(:name, :email, :phone_number) # allow to use name, email and phone number
  end
end
