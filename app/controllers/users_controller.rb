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
<<<<<<< HEAD
    # binding.pry
=======
    binding.pry
    redirect_to user_path(current_user)
>>>>>>> cee80265ae61aae202120f643005d1bdb9722b02
  end


  def questionnaire
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:id, :dog_name, :owner_name, :dog_age, :dog_bio, :owner_bio, :gender, :breed, :neutered, :address, :interest, :user_rating, :dog_picture, :owner_picture, :match_list => [], :preference_list => [])
  end
end
