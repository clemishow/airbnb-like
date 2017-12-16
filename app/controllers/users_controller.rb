class UsersController < ApplicationController
  def show 
    @user = User.find(params[:id])
    @book = Book.where(user_id: params[:id]).to_a
    @workshop = Workshop.where(user_id: params[:id]).to_a
    @title = current_user.id.to_i == params[:id].to_i ? 'My profile' : 'Profile of ' + @user.firstname + ' ' + @user.lastname
  end
end