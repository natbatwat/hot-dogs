class UsersController < ApplicationController
  def user_params
    params.require(:user).permit(:id, :dog_name, :match_list => [])
  end
end
