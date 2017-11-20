class Workshops::SearchController < SearchController

  def index
    @keyword = params[:keyword]
    @workshops = Workshop.where("title like ?", "%#{@keyword}%").limit(100)
    puts @workshops.inspect
  end

end