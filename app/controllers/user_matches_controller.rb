class UserMatchesController < ApplicationController

  def accept_match
    @match = UserMatch.find(params[:id])
    match_data = params[:match_data]
    @match.status = match_data[:status]
    @match.save
    render json: @match
  end
end