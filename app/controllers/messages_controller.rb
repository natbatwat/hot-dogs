class MessagesController < ApplicationController
  def index
    @messages = Message.all
    respond_to do |format|
      format.html
      format.json {render json: @messages }
    end
  end

  def create
    binding.pry
    @message = Message.create!(message_params)
    render json: @message, status: :created
  end

  private

  def message_params
    params.require(:message).permit(:content, :user_id: current_user)
  end
end
