class BooksController < ApplicationController
  def index
    @books = Book.all
  end
  
  def new
  end

  def create
    @book = Book.new
    @book.title = params[:title]
    @book.description = params[:description]
    @book.pages = params[:pages]
    @book.author_id = params[:author_id]
    @book.amazon_url = params[:amazon_url]
    @book.picture_url = params [:picture_url]
    @book.save
    
    redirect_to '/books'
  end
  
  def edit 
  end
  
  def update
  end

  def show
  end

end
