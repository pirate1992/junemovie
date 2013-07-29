class Admin::NoticesController < Admin::BaseController

  def index
    @notices = Notice.all
  end

  def new
    @notice = Notice.new
  end

  def create
    @notice = Notice.new(params[:notice].permit!)
    if @notice.save
      redirect_to admin_notices_path
    else
      render :new
    end
  end

  def edit
    @notice = Notice.find(params[:id])
  end

  def update
    @notice = Notice.find(params[:id])
    if @notice.update_attributes(params[:notice].permit!)
        redirect_to admin_notices_path
    else
      render :edit
    end
  end

  def destroy
    @notice = Notice.find(params[:id])
    @notice.destroy
    redirect_to admin_notices_path
  end
end

