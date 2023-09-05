class MovieController < ApplicationController
    def create_movie
        @mv = Movie.new(movie_params)
        if @mv.save
          render json: @mv
        else
          render json: @mv.errors, status: :unprocessable_entity
        end
    end

    def movie_params
        params.require(:movie).permit(:title, :sinopsis, :duration, :premiere, :director)
    end
end
