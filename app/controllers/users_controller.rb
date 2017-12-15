class UsersController < ApplicationController
  def show 
    @user = User.find(params[:id])
    @title = current_user.id.to_i == params[:id].to_i ? 'My profile' : 'Profile of ' + @user.firstname + ' ' + @user.lastname
  end
end