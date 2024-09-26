class SerieController < ApplicationController
  def index
    @serie = serie.all
end

def new
    #Captura los datos enviados en el formulario
    @serie = Post.new
end

def create
  @serie = Post.new(serie_params)
  pp @serie
  if  @serie.save 
        redirect_to root_path  
        # redirect_to posts_index_path
    else
      render  :new
    end 
end


private

def serie_params
    params.require(:serie).permit(:name, :synopsis. :director)
end
