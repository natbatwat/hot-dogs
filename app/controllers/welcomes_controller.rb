class WelcomesController < ApplicationController

  def index
    @events = Event.all
  end

end