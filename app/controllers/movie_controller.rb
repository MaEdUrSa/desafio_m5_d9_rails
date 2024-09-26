class MovieController < ApplicationController
    def index
        # @movie = Post.all
        @movie = Post.all
    end

    def new
         @movie = Post.new
    end

    def create
      @movie = Post.new(movie_params)
      pp @movie
        if  @movie.save 
              redirect_to root_path  
              # redirect_to posts_index_path
          else
            render  :new
        end 
    end


  private

  def movie_params
      params.require(:movie).permit(:name, :synopsis, :director)
  end
end
