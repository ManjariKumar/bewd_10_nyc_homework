class MoviesController < ApplicationController

	def index
		@movies = Movie.all
	end

	def show
		@movie = Movie.find(params[:id])
	end

	def create 
		@movie = Movie.new(movie_params)
		@movie.save
		redirect_to @movie
	end

	private 
	def movie_params
    params.require(:movie).permit(:title, :description, :year_released)
	end

end
