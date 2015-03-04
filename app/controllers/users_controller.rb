class UsersController < ApplicationController
  def index
    @users = User.all 
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update
  end

  def update_preferences
    preferences = params[:user]
    current_user.preference_list.add(preferences)
    current_user.save
  end


  def questionnaire
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:id, :dog_name, :owner_name, :dog_age, :dog_bio, :owner_bio, :gender, :breed, :neutered, :address, :user_rating, :dog_picture, :owner_picture, :preference_list => [])
  end
end
