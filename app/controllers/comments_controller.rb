class CommentsController < ApplicationController
	def create
	@movie = Movie.find(params[:movie_id])
	@comment = @movie.comments.create(params[:comment])
	redirect_to movie_path(@movie)
	end
end
