class CategoriesController < ApplicationController
  before_filter :authenticate_user!
  before_filter :administrator

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(params[:category])
    if @category.save
      flash[:success] = "#{@category.name} has been created successfully!"
      redirect_to root_path
    else
      render "new"
    end
  end
end
