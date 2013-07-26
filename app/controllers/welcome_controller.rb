class WelcomeController < ApplicationController
  def index
    @notices = Notice.all
    @movies = Movie.all
    @catalogue = Catalogue.all
  end
  
end
