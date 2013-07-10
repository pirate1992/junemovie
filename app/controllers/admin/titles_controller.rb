class Admin::TitlesController < Admin::BaseController

  def index
    @titles = Title.all
  end

  def new
    @title = Title.new
  end

  def create
    @title = Title.new(params[:title])
    if @title.save
      redirect_to  admin_titles_path
    else
      render :new
    end
  end

  def edit
    @title = Title.find(params[:id])
  end

  def update
    @title = Title.find(params[:id])
    if @title.update_attributes(params[:title])
        redirect_to admin_titles_path
    else
      render :edit
    end
  end

  def destroy
    @title = Title.find(params[:id])
    @title.destroy
    redirect_to admin_titles_path
  end
end

