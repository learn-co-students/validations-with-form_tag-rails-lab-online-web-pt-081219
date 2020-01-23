class AuthorsController < ApplicationController

  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
    #needs a erb file to see in browser
  end

  def edit
    @author = Author.find(params[:id])
    #needs a erb file to see in browser
  end 

  def create
    @author = Author.new(author_params)
    if @author.valid?
      @author.save
    redirect_to author_path(@author)
    else 
      render :new
    end 
    #recieves info from form doesnt need erb
  end

    def update
      @author = Author.find_by(id: params[:id])
    
        @author.assign_attributes(author_params)
    
        if @author.valid? 
          @author.save
          redirect_to author_path(@author)
        else
          render :edit
           #recieves info from form doesnt need erb
           #passes because the lab isnt looking for the edit view but to show in browser you would need an edit erb to show the user how to create an author agin if they didnt do it correvtly based off te params
        end
      
  
  end


  private

  def author_params
    params.permit(:name, :email, :phone_number)
  end
end
