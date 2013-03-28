class ArticlesController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]
  before_filter :administrator, except: [:index, :show]
  before_filter :sidebar, only: [:index, :show]

  def index
    if params[:category_id].nil? or params[:category_id].empty?
      @articles = Article.order("created_at DESC").paginate(page: params[:page], per_page: 6)
    else
      @articles = Category.find(params[:category_id]).articles.order("created_at DESC").paginate(page: params[:page], per_page: 6)
    end
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(params[:article])
    if @article.save
      flash[:success] = "#{@article.title} has been successfully created!"
      redirect_to @article
    else
      render "new"
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update_attributes(params[:article])
      flash[:success] = "#{@article.title} has been updated successfully!"
      redirect_to @article
    else
      render "edit"
    end
  end

  private
  def sidebar
    @selected_category = params[:category_id] ? Category.find(params[:category_id]).name : nil
    @categories = Category.order("name")
  end
end
