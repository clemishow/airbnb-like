class Workshops::BooksController < BooksController 
  before_action :find_workshop!, only: [:new]
  before_action :authenticate_user!

  def index
    @books = Workshop.select('*').joins(:books).where(user_id: current_user.id).to_a
    
    puts @books.inspect
  end

  def show
    @book = Book.find(params[:id])
    @workshop = Workshop.find(@book.workshop_id)
    puts 'Book : ' + @book.inspect
    puts 'Workshop : ' + @workshop.inspect
  end

  def new 
  end 

  def create
    @book = current_user.books.new(book_params)
    puts "Book : " + @book.inspect
    if @book.save
      redirect_to :workshops_books
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