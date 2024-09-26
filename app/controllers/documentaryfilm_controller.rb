class DocumentaryfilmController < ApplicationController
  def index
    @documentaryfilm = documentaryfilm.all
  end

  def new
      #Captura los datos enviados en el formulario
      @documentaryfilm = Post.new
  end

  def create
      @documentaryfilm = Post.new(documentaryfilm_params)
      pp @documentaryfilm

        if @documentaryfilm.save 
            redirect_to root_path  
            # redirect_to posts_index_path
        else
          render  :new
        end 
  end


  private

  def documentaryfilm_params
      params.require(:documentaryfilm).permit(:name, :synopsis. :director)
  end
end
