## Books controller
##
##

class BooksController < ApplicationController

  # Get /books
  # Currently set root path to this
  def index
  end

  # Get /books/:id
  def show
    @book = Book.where(id: params[:id]).first

    @authors = @book.authors

    @categories = Category.all

    respond_to do |format|
      format.html { render 'show'}
      # format.json { render @book.to_json, status: :ok}
      #format.html { redirect_to book_path}
    end

  end

  def destroy
    Book.find_by(id: params[:id]).destroy
    respond_to do |format|
      # Redirect to book's home
      format.html { redirect_to books_path }
    end
  end

end