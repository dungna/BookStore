## Author controller
##
##

class AuthorsController < ApplicationController

  # Get /authors/:id
  def show
    @author = Author.find_by(id: params[:id])

    respond_to do |format|
      format.html { render 'show'}
      # format.json { render @book.to_json, status: :ok}
    end

  end

end