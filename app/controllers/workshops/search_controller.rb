class Workshops::SearchController < SearchController

  def index
    if params[:keyword].empty?
      redirect_to :workshops
    else 
      @keyword = params[:keyword]
    end

    @workshops = Workshop.where('title LIKE ?', "%#{@keyword}%").limit(100)

    if @workshops.empty? 
      @no_results = 'There is no results for your query'
    end
  end

end