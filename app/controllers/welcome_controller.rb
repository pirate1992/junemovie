class WelcomeController < ApplicationController
  def index
    @notices = Notice.all
    @movies = Movie.all
  end
end
