class UsersController < ApplicationController
  before_action :authenticate_admin!

  def index 
    @users = User.all
  end

  def show
    @user = User.find(params[:id]) 
  end

  def destroy
    @users.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
end