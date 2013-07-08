class ApplicationController < ActionController::Base
  protect_from_forgery
  # def current_movie
  # Movie.find(session[:movie_id])
  # rescue ActiveRecord::RecordNotFound
  #   movie =Movie.create
  #   session[:movie_id] = movie.id
  #   movie
  # end
end
