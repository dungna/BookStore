## Categories controller
##
##

class CategoriesController < ApplicationController
  # get /categories/:id

  def show
    @category = Category.find_by(id: params[:id])

    respond_to do |format|
      format.html { render 'show'}
    end
  end
end