class MuseumsController < ApplicationController
  def new
  	@museum = Museum.new
  end

  def create
  	@museum = Museum.new(museum_params)
    @museum.save
    redirect_to museums_path
  end

  def index
  	 @museums = Museum.all
  end

  def show
  	@museum = Museum.find(params[:id])
  end

  def edit
    @museum = Museum.find(params[:id])
  end

  def update
    museum = Museum.find(params[:id])
    museum.update(museum_params)
    redirect_to museum_path(museum)
  end

  def destroy
    @museum = Museum.find(params[:id])
    @museum.destroy
    redirect_to museums_path
  end

private
    def museum_params
        params.require(:museum).permit(:museum_name, :image, :museum_detail)
    end

end
