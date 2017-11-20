class Users::WorkshopsController < WorkshopsController
  before_action :authenticate_user!

  def index
    @workshops = Workshop.where(user_id: current_user.id).limit(100)
    puts @workshops.inspect
  end

  def update
  end
end