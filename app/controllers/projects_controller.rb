class ProjectsController < ApplicationController

  before_filter :authenticate_user!, except: :index

  def index
    @projects  = Project.order("created_at DESC").paginate(page: params[:page], per_page: 5)
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(params[:project])
    if @project.save
      flash[:success] = "#{@project.title} has been created successfully!"
      redirect_to projects_path
    else
      render 'new'
    end
  end

  def edit
    @project = Project.find_by_id(params[:id])
  end

  def update
    @project = Project.find_by_id(params[:id])
    if @project.update_attributes(params[:project])
      flash[:success] = "#{@project.title} has been updated successfully!"
      redirect_to projects_path
    else
      render "edit"
    end
  end
  

end