class CategoriesController < ApplicationController

  def index
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      flash[:notice] = "Category Saved"
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
  end

  private
    def category_params
      params.require(:category).permit(:name)
    end

end
