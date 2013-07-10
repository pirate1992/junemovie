class WelcomeController < ApplicationController
  def index
    @titles = Title.all
    @movies = Movie.all
  end
end
