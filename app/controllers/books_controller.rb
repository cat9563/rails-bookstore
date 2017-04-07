class BooksController < ApplicationController
  def index
    @books = Book.all
  end
  
  def new
    @book = Book.new
  end

  def create
    @book = Book.new
    @book.title = params[:title]
    @book.description = params[:description]
    @book.pages = params[:pages]
    @book.author_id = params[:author_id]
    @book.amazon_url = params[:amazon_url]
    @book.picture_url = params[:picture_url]
    
    if @book.save
          redirect_to '/books'
      else
          render action: 'new'
    end
  end
  
  def edit
    @book = Book.find params[:id]
  end
  
  def update
    @book = Book.find params[:id]
    @book.title = params[:title]
    @book.description = params[:description]
    @book.pages = params[:pages]
    @book.author_id = params[:author_id]
    @book.amazon_url = params[:amazon_url]
    @book.picture_url = params[:picture_url]
    
    if @book.save
            redirect_to '/books'
        else
            render action: 'edit'
    end
  end

  def show
    @book = Book.find params[:id]
  end

  def create_review
    @review = Review.new
    @review.rating = params[:rating]
    @review.text = params[:text]
    @review.username = params[:username]
    @review.book_id = params[:id]
    @review.save
    
    redirect_to "/books/"
  end
end