class Admin::NewsController < Admin::BaseController
  
  def index
    @news = News.all
  end

  def new
    @news = News.new
  end

  def edit
    @news = News.find(params[:id])
  end

  def create
    @news = News.new(params[:news])
    if @news.save
      redirect_to news_index_path
    else
      render :new
    end
  end

  def update
    @news = News.find(params[:id])
    if @news.update_attributes(params[:news])
      redirect_to news_index_path
    else
      redirect_to :edit
    end
  end

  def destroy
    @news = News.find(params[:id])
    @news.destroy
    redirect_to news_index_path
  end
end
