class Admin::CharactersController < Admin::BaseController

  def index
    @characters = Character.all
  end

  def new
    @character = Character.new
  end

  def create
    @character = Character.new(params[:character].permit!)
    if @character.save
      redirect_to admin_characters_path
    else
      render :new
    end
  end

  def edit
    @character = Character.find(params[:id])
  end

  def update
    @character = Character.find(params[:id])
    if @character.update_attributes(params[:character].permit!)
        redirect_to admin_characters_path
    else
      render :edit
    end
  end

  def destroy
    @character = Character.find(params[:id])
    @character.destroy
    redirect_to admin_characters_path
  end
end