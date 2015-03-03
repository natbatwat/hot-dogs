class UsersController < ApplicationController
  def index
    @users = User.all 
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = current_user
    @user.update(user_params)
    current_user.preferences_list.add(value.value)
  end


  def questionnaire
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:id, :dog_name, :owner_name, :dog_age, :dog_bio, :owner_bio, :gender, :breed, :neutered, :address, :interest, :user_rating, :dog_picture, :owner_picture, :match_list => [], :preference_list => [])
  end
end
