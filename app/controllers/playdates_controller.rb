class PlaydatesController < ApplicationController
  
  def index
    @playdates = Playdate.all
  end

  def new
    @playdate = Playdate.new
  end

  def create
    @playdate = Playdate.create(playdate_params)
    if @playdate.save
      # redirect_to user's playdate page
      flash[:notice] = "You successfully created a playdate!"
    else
      # redirect_to playdate form
    end
  end

  def edit
    @playdate = Playdate.find(params[:id])
  end

  def update
    @playdate = Playdate.find(params[:id])
    if @playdate.update(playdate_params)
      # redirect_to playdatse_path
      flash[:notice] = "You successfully updated a playdate!"
    else
      render 'new'
    end
  end

  def show
    @playdate = Playdate.find(params[:id])
  end
  
  def destroy
    @playdate = Playdate.find(params[:id])
    @playdate.destroy
    # redirect_to 
    flash[:notice] = "You successfully deleted a playdate!"
  end

  private
  def playdate_params
    params.require(:playdate).permit(:name, :date, :place, :time, :event_rating)
  end

end
