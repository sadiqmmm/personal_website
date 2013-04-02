class CommentsController < ApplicationController

  before_filter :authenticate_user!, except: [:show, :index]

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(params[:comment])
    if @comment.save
      # flash[:success] = "Note created!"
      # redirect_to root_path
    else
      # flash[:error] = "We couldn't create the note. Try again later."
      # redirect_to root_path
    end
  end

  def index
    @comments = Comment.all
  end

end