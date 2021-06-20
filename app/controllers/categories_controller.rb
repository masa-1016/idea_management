class CategoriesController < ApplicationController
  def index
  end

  def new
    @category = Category.new
    @idea = @category.ideas.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def category_params
    params.require(:category).permit(:name, ideas_attributes: :body)
  end
end
