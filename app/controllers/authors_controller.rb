class AuthorsController < ApplicationController
  def show
    set_author
  end

  def new
    @author = Author.new(author_params)
  end

  def create
    @author = Author.new(author_params)

    if @author.valid?
      @author.save
      redirect_to author_path(@author)
    else
      #hold on to @author, because it is now full of
      # useful error messages, and re-render the :new page, which knows how
      # to display them alongside the user's entries.
      render :new
    end
  end
  
  def edit
  end

  def update
    set_author
    @author.attributes = author_params
    
    if @author.valid?
      @author.save
      redirect_to author_path(@author)
    else
      render :edit
    end    
  end

  private
  def set_author
    @author = Author.find(params[:id])
  end

  def author_params
    params.permit(:name, :email, :phone_number)
  end
end
