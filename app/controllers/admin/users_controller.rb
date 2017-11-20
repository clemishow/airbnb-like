class Admin::UsersController < UsersController 
  before_action :authenticate_admin!

  def index
    @users = User.all
    puts @users.inspect
  end

  def show
    @user = User.find(params[:id])
  end

  def edit 
  end

  # DELETE /workshops/1.json
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    respond_to do |format|
      format.html { redirect_to admin_users_path, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
end