class Workshops::BooksController < BooksController 
  before_action :find_workshop!

  def index
  end

  def new 
  end 

  def create
    @book = current_user.books.new(book_params)
    puts "Book : " + @book.inspect
    if @book.save
      render :show
    else 
      render :show
    end
  end 

  private 
    def find_workshop!
      @workshop = Workshop.where(id: params[:workshop_id])
      puts "Find workshop : " + @workshop.inspect
    end

    def book_params
      params.permit(:start_date, :end_date, :workshop_id)
    end
end