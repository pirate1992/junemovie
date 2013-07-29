class WelcomeController < ApplicationController
  def index
    @notices = Notice.all
    @movies = Movie.all
    @category = Category.all
  end

end
