class NoticesController < ApplicationController
  def index
    @notices = Notice.all
    @movies =Movie.all
  end

  def show
    @notice = Notice.find(params[:id])
    @movies =Movie.all
  end
end