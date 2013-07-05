class WelcomeController < ApplicationController
  def index
    @news = News.all
    @movies = Movie.all
  end
end
