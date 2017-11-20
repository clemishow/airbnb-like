class Workshops::BooksController < BooksController 
  before_action :find_workshop!

  def new 
  end 

  def create
  end 

  def new 
    
  end

  def find_workshop!
    @workshop = Workshop.where(id: params[:workshop_id])
    puts @workshop.inspect
  end
end