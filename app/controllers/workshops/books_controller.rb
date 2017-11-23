class Workshops::BooksController < BooksController 
  before_action :find_workshop!, only: [:new]
  before_action :authenticate_user!

  def index
    select = 'workshops.title, books.id, books.start_date, books.end_date'
    @books = Book.select(select).joins('INNER JOIN workshops ON books.workshop_id = workshops.id').where(user_id: current_user.id).all
    
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
      redirect_to :workshops_books_all
    else 
      redirect_to :workshops_new_book
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